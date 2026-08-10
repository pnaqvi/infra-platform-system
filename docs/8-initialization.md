> **Mirror** of `skills/infra-platform-core/references/initialization.md` at release 1.3 — the canonical copy ships with the core skill and is what help mode reads. Edit there; refresh mirrors at each release (system-maintenance step).

# Initialization — From Installed to Fully Initialized

*Trigger: **"initialize the infra-platform system"** (also "first-run setup", "bootstrap the system"). One guided session that takes a freshly installed system to fully initialized. Resumable: progress is tracked in the `system` section (`init-status.md`), so a stopped initialization continues where it left off instead of restarting. Re-running on an initialized system reports status and offers only the missing pieces.*

## Definition of done

The system is **fully initialized** when all of these are true — the closing report scores each:
1. Shakedown passed (or express-passed) on this machine — T9 satisfied.
2. Positions seeded across the program's decision domains (bootstrap interview run, or consciously deferred per domain).
3. Fact-sheet (`program-context.md`) filled and confirmed — no `[X]` he can resolve today.
4. Standing meetings and key stakeholders recorded — this is what makes the pulse's proactive prep offers (item 7) and meeting-prep work from day one.
5. Risk register holds the current top risks (or is confirmed consciously empty).
6. The current cadence period is open with at least a skeleton `plan.md`.
7. A pulse runs clean and reports real state.
8. Initialization is captured: one `system`-section entry ("system initialized <date>, <path taken>") and the fact-sheet's `Last confirmed` date set.

## Two paths

**Full (~90 minutes, recommended before budget season):** every step below.
**Express (~30 minutes, when time is short):** shakedown-express (steps 2, 4, 6 of the drill), fact-sheet, standing meetings, open the period, pulse — with the bootstrap interview and risk register scheduled as named follow-ups the pulse will chase. Express is honest initialization, not a skipped one: the closing report lists exactly what's deferred.

State the two paths and time costs up front; he picks. Every step below confirms before writing (T4) and logs friction as it goes (T7).

## The sequence

**Step 0 — Preflight (2 min).** Verify: twelve skills present, both homes exist with manifests, git responding in both. Any failure routes to the install guide's manual steps before proceeding. Record `init-status.md` in the `system` section.

**Step 1 — Shakedown (30 min full / 10 min express).** Run the drill per `references/shakedown-drill.md`. Full = all steps; express = capture/read-back (2), document filing (4), pulse (6). Failures are findings, not blockers — fix or log, then continue.

**Step 2 — Fact-sheet (5–10 min).** Walk `program-context.md` field by field: phase, active products and owners, org shape, anchors decided and open, this quarter's commitments, top constraints, standing context. `[X]` only for what he genuinely can't state today. Set `Last confirmed`. This single file is what stops him re-explaining the program in every future session.

**Step 3 — Bootstrap interview (20–30 min; full path).** The advisor's seeding interview (`infra-platform-advisor/references/positions-seed.md`) across program-strategy, architecture, platform-products, vendors, org-talent, metrics-value. "No position yet" is a valid answer per domain; deferrals are listed in the closing report.

**Step 4 — Standing meetings & stakeholders (10 min).** Capture to the `stakeholders` section (sync: no — machine-local): his recurring meetings (name, cadence, who's in the room, what it decides) and the handful of key stakeholders with one line each. This wires the weekly grain: the pulse can now offer preps proactively and meeting-prep opens with real carry-ins.

**Step 5 — Risk register (10 min; full path).** First pass at `project-plans/risk-register.md`: the top 3–5 program risks as he sees them today, each with owner and mitigation, or an explicit "consciously empty — first pass at <date>" row. Reviews will derive from this forever after.

**Step 6 — Open the current period (10 min).** Create `cadence/monthly/<current>/` (and the quarter if quarterly planning is near) with a skeleton `plan.md` from what steps 2–5 surfaced: this period's objectives, known milestones (ledgered on his confirm), carry-ins. If budget season is inside a quarter, note it and offer to schedule the portfolio-planning session as the first real work item.

**Step 7 — First pulse.** Run it. It should now report genuine state — commitments from step 6, the confirmed fact-sheet, registered risks, standing meetings. A clean, non-empty pulse is the proof the system is alive.

**Step 8 — Close.** The initialization report: definition-of-done scorecard, deferrals with dates, friction lines logged, and the capture ("system initialized <date>"). Commit everything; `init-status.md` marked complete.

## Notes

- **Order matters once:** fact-sheet before bootstrap (facts anchor the interview); standing meetings before the first pulse (or item 7 has nothing to check).
- **Environment:** designed for Claude Code on the target machine. In claude.ai chat (no filesystem), the sequence still runs conversationally and produces capture files for the inbox — announced as that mode (T8) — but a real initialization should happen where the system lives.
- **Re-initialization** after a long gap: re-run; it becomes a deep refresh (fact-sheet re-confirm, position aging pass, register review) rather than a restart.
