#!/usr/bin/env bash
# Infra-Platform-System installer — idempotent. Safe to re-run after bundle updates.
set -euo pipefail
BUNDLE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DST="$HOME/.claude/skills"
MEM="$HOME/ai_working_Directory/infra-platform-memory"
WS="$HOME/ai_working_Directory/infra-platform-workspace"

echo "== Infra-Platform-System installer =="
echo "Bundle: $BUNDLE_DIR ($(cat "$BUNDLE_DIR/VERSION" 2>/dev/null || echo 'unversioned'))"

# 1. Skills (always overwrite with bundle versions — bundle is canonical)
mkdir -p "$SKILLS_DST"
for s in "$BUNDLE_DIR"/skills/*/; do
  name="$(basename "$s")"
  rm -rf "$SKILLS_DST/$name"
  cp -r "$s" "$SKILLS_DST/$name"
  echo "  skill installed: $name"
done

# git identity fallback (machines with none configured)
ensure_git_identity() {
  git config user.email >/dev/null 2>&1 || git config user.email "infra-platform-system@local"
  git config user.name  >/dev/null 2>&1 || git config user.name  "Infra-Platform-System"
}

# 2. Memory home — seed ONLY if absent; existing data never touched
if [ ! -d "$MEM" ]; then
  mkdir -p "$(dirname "$MEM")"
  cp -r "$BUNDLE_DIR/memory-seed" "$MEM"
  ( cd "$MEM" && git init -q && ensure_git_identity
    # confidential sections: nested local-only repos, ignored by outer repo
    for sec in org-talent stakeholders; do
      ( cd "sections/$sec" && git init -q && ensure_git_identity && git add -A && git commit -qm "seed $sec (local-only)" )
      grep -qx "sections/$sec/" .gitignore 2>/dev/null || echo "sections/$sec/" >> .gitignore
    done
    git add -A && git commit -qm "seed infra-platform memory ($(date +%F))" )
  echo "  memory seeded: $MEM"
else
  echo "  memory exists, untouched: $MEM"
fi

# 3. Workspace home — same policy
if [ ! -d "$WS" ]; then
  mkdir -p "$(dirname "$WS")"
  cp -r "$BUNDLE_DIR/workspace-seed" "$WS"
  ( cd "$WS" && git init -q && ensure_git_identity && git add -A && git commit -qm "seed infra-platform workspace ($(date +%F))" )
  echo "  workspace seeded: $WS"
else
  echo "  workspace exists: $WS"
  # v1.0 -> v1.1 migration: reviews/ becomes cadence/, history preserved
  if [ -d "$WS/reviews" ] && [ ! -d "$WS/cadence" ]; then
    ( cd "$WS" && ensure_git_identity
      mkdir -p cadence
      git mv reviews/monthly cadence/monthly 2>/dev/null || { mkdir -p cadence/monthly; [ -d reviews/monthly ] && mv reviews/monthly/* cadence/monthly/ 2>/dev/null; }
      git mv reviews/quarterly cadence/quarterly 2>/dev/null || { mkdir -p cadence/quarterly; [ -d reviews/quarterly ] && mv reviews/quarterly/* cadence/quarterly/ 2>/dev/null; }
      rmdir reviews 2>/dev/null || true
      [ -f reference/INDEX.md ] || cp "$BUNDLE_DIR/workspace-seed/reference/INDEX.md" reference/INDEX.md 2>/dev/null || true
      git add -A && git commit -qm "migrate workspace layout to v1.1 cadence structure ($(date +%F))" )
    echo "  workspace migrated: reviews/ -> cadence/ (git history preserved)"
  fi
fi

# 4. Verify
echo "== Verify =="
ls "$SKILLS_DST" | grep -c '^infra-platform-' | xargs -I{} echo "  infra-platform skills present: {}"
[ -f "$MEM/MANIFEST.md" ] && echo "  memory manifest: OK"
[ -f "$WS/MANIFEST.md" ] && echo "  workspace manifest: OK"
echo ""
echo "Next steps:"
echo "  1. Restart Claude Code; check /skills lists twelve infra-platform-* skills."
echo "  2. Say: \"initialize the infra-platform system\" — the guided first-run sequence"
echo "     (shakedown, fact-sheet, bootstrap interview, standing meetings, risk register,"
echo "      open the current period, first pulse). Full ~90 min or express ~30; resumable."
