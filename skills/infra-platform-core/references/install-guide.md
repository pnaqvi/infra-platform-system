# Installing Infra-Platform-System — New Machine, New Account

*Document 3 of 4 · v1, August 2026.*

The system has two portable parts: **skills** (files — account-independent) and **the two data homes** — memory (`~/ai_working_Directory/infra-platform-memory/`) and workspace (`~/ai_working_Directory/infra-platform-workspace/`). Claude Code loads skills from disk (`~/.claude/skills/`), so whichever account is signed in, the files work. Claude.ai saves are per-account, never per-machine.

## §0 — Work-machine policy (read first)

Installing tooling on a corporate machine, syncing repos, and using AI assistants for work product are typically governed. The skills contain no company data by design (T3), but memory and workspace accumulate work-derived material. Clear it with your organization the way you'd have your own engineers clear it. If the machine already runs other personal skill systems, this one neither requires nor touches them — it is fully standalone.

## §1 — Get the bundle

`infra-platform-system/` is the canonical unit (skills/, memory-seed/, workspace-seed/, install.sh, VERSION, CHANGELOG.md). Carry it by whatever route policy allows; assume it lands at `~/ai_working_Directory/infra-platform-system`.

## §2 — Install (one command)

```bash
cd ~/ai_working_Directory/infra-platform-system && bash install.sh
```

Idempotent. It: installs/updates all twelve skills into `~/.claude/skills/`; seeds the memory and workspace homes **only if absent** (existing data is never touched); initializes both as git repos with a first commit; makes the two confidential memory sections (org-talent, stakeholders) nested local-only git repos, ignored by the outer repo, so a remote added later can never carry them; and verifies the result. Re-run anytime after a bundle refresh.

Manual equivalent:
```bash
mkdir -p ~/.claude/skills && cp -r skills/* ~/.claude/skills/
cp -r memory-seed ~/ai_working_Directory/infra-platform-memory
cp -r workspace-seed ~/ai_working_Directory/infra-platform-workspace
(cd ~/ai_working_Directory/infra-platform-memory && git init && git add -A && git commit -m "seed")
(cd ~/ai_working_Directory/infra-platform-workspace && git init && git add -A && git commit -m "seed")
```

Restart Claude Code; verify with `/skills` — twelve infra-platform skills should list. Windows: `\.claude\skills\` under the user profile; WSL uses `~/.claude/skills/` in the distribution. Claude Desktop reads the same directory.

**Claude.ai (optional, for browser/mobile quick-takes and captures):** upload each `.skill` package into a chat and click **Save skill**. If the button is absent, the org disabled it — Claude Code carries everything essential.

## §3 — Initialize (one command)

Setup is not complete at install — an installed system has skills but empty registers. In Claude Code on this machine, say:

> **"initialize the infra-platform system"**

This runs the guided initialization sequence (core's `references/initialization.md`): preflight → shakedown (the T9 drill) → fact-sheet fill → bootstrap positions interview → standing meetings & stakeholders → risk-register first pass → open the current cadence period → first pulse → closing scorecard. Two paths: **full** (~90 minutes, recommended — do this before budget season) or **express** (~30 minutes; the deferred pieces become named follow-ups the pulse chases). The sequence is resumable — stop anytime, continue later from where it left off.

**The system is fully initialized when the closing scorecard passes:** shakedown run, positions seeded, fact-sheet confirmed, standing meetings recorded, risk register populated (or consciously empty), current period open with a skeleton plan, and a pulse that reports real state. The workspace already ships with the program's eight Gartner source documents filed and indexed in `reference/`; drop further source material into `~/ai_working_Directory/infra-platform-workspace/inbox/` and say "file my workspace inbox" anytime.

Manual equivalents, if you prefer step-by-step: "run the shakedown" → "bootstrap my platform positions" → fill `program-context.md` → capture your standing meetings → fill `project-plans/risk-register.md` → "draft the <current month> plan" → "run my pulse".

Re-running the installer on an existing machine migrates old workspace layouts automatically (git history preserved).

## §4 — Verify (five minutes)

1. `/skills` → twelve skills present.
2. The initialization closing scorecard shows all items passed or consciously deferred.
3. "Quick take on <anything small>" → the advisor cites the fact-sheet and any relevant seeded position; "proceeding memoryless" means a path is wrong.
4. "Help — which skill handles X?" → core's help mode answers from its docs.
5. `git log` in both homes → the initialization commits are the audit trail working.

## §5 — Versions & coherence

Release **X.Y** + date in the bundle's `VERSION` and CHANGELOG; every skill header carries **X.Y.Z**. The bundle is canonical for skills: improve anywhere → update the bundle → reinstall on each machine; never let two machines fork a skill. Memory/workspace need no cross-machine reconciliation under a split posture — two contexts, two honest histories; moves between machines happen as explicit files through the destination's `inbox/`, never background sync.
