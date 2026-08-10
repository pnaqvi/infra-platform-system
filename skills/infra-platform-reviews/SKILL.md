---
name: infra-platform-reviews
description: >
  Produces and tracks the platform program's operating cadence — the monthly plan, monthly
  status, and Monthly Business Review (MBR), and the quarterly plan, quarterly status, and
  Quarterly Program Review (QBR) that Parvez sends and shares with executives and
  stakeholders. Use whenever he prepares, drafts, updates, or reflects on any cadence
  artifact — "build this month's review", "draft the September plan", "update monthly
  status", "prep the Q3 QBR", "here are this month's numbers", "what did we commit to last
  quarter", "turn the review into a deck or Word doc". Owns the artifact anatomies, tracks
  every commitment in the reviews memory section so each cycle starts from what was
  actually promised, and files everything to the workspace cadence folders as shareable
  documents (md/pptx/docx). Consumes the metrics model and advisor analyses. Not for
  designing metrics or one-off strategy analysis.
---

# Infra-Platform Reviews

*Skill version 1.3.0 · Last updated 2026-08-10 · infra-platform-system release 1.3 (2026-08-10)*

The program's operating cadence — three artifacts per period, monthly and quarterly: the **plan** (forward-looking: what this period will deliver), the **status** (backward-looking: what happened against the plan), and the **review** (MBR/QBR — the composed document Parvez sends). Plus the commitment ledger (T11) that makes every cycle start from what was promised last time. **Core governs** (voice, tenets, depth); numbers obey T2 absolutely — a review is the most upward-facing artifact in the system, so **every figure is [his-input] or [X]; nothing is ever estimated into a review**.

## Memory & workspace — client of infra-platform-memory

Section: **reviews** — the commitments ledger (`decisions-ledger.md` rows: commitment | owner | due | status | outcome) plus carry-forwards and calibration insights. All cadence artifacts are **filed to the workspace period folders** — `cadence/monthly/YYYY-MM/` and `cadence/quarterly/YYYY-QN/` — under their standard names (`plan.md`, `status.md`, `mbr.*`/`qbr.*`, `metrics-snapshot.md`), each with a manifest row, status `draft` until he declares it sent, then `final` (T10). Never overwrite a sent artifact — corrections are new versions with supersession noted.

## The period cycle — plan → status → review

**Plan** ("draft the September plan"): open from last period's status and the ledger (commitments due, carry-forwards); he states the period's objectives, milestones, and capacity notes; draft to the plan anatomy in `references/review-templates.md`; anything unknown stays `[X]`. A committed plan's milestones become ledger rows.

**Status** ("update monthly status"): the mirror of the plan — each planned item marked delivered / slipped / at-risk / dropped with cause; metric actuals recorded to the metrics snapshot; new risks and learnings captured. Status is the raw material the review composes from — it can be updated incrementally through the period.

**Review** (MBR/QBR): the composed, sent document — built from the period's plan, status, snapshot, and ledger, per the cycle below. The review never contains a claim its status and snapshot can't back (T2, T10).

## The review cycle

**1. Open the cycle** ("start the August MBR"): read last period's review from the workspace and the commitments ledger; present the opening state — commitments due this period with status unknown, carry-forwards, last period's flagged risks. He fills outcomes; unknowns stay `[status?]`, visibly.

**2. Gather** — read the standing risk register (`workspace/project-plans/risk-register.md`) so the review's risk section is derived, not re-typed: new/changed/stale-review rows surface automatically, and any risk he mentions that isn't registered gets an add offer. Then collect this period's inputs from him: metric actuals (per the adopted framework from metrics-value; the metrics advisor's model defines what's expected), milestone status vs. plan, notable deliveries, incidents/learnings, new risks, decisions needed, asks. Anything missing gets `[X]` — the draft shows its holes honestly rather than papering them.

**3. Draft** to the anatomy in `references/review-templates.md`: MBR = tight operating review (2–4 pages / ~10–12 slides); QBR = the fuller program story (strategy progress, portfolio view, next-quarter commitments). Both lead with the headline assessment (on/off track and why, in one paragraph), keep metrics in the four-pillar frame with trend vs. target and joint readings (per the metrics advisor's interpretation rules), name misses plainly with cause and correction — no embellishment, no burying — and end with decisions needed and asks. His voice: executive-crisp, metrics-forward, no filler.

**4. Render & share** — Markdown in the period folder always (the canonical record); a **deck (pptx)** or **Word doc (docx)** when he'll send it — in environments with document-creation skills available (pptx/docx), use them to produce the polished shareable file; otherwise deliver clean Markdown he can convert and say so (T8). Shareable renderings go through **infra-platform-exec-writer** for the craft pass (anatomy check + T12 scrub) when it's available; otherwise apply core's `references/prose-hygiene.md` directly before `final` (T8). File everything per the memory skill.

**5. Close the cycle** — when he declares it sent: mark `final`; write every new commitment made in the review into the ledger (owner, due period); log carry-forwards; offer 1–2 calibration captures ("we've slipped the same milestone twice — worth a position on the estimate discipline?").

## Quarterly extras (QBR)

- **Commitment scorecard:** every commitment made last QBR with kept/missed/moved — computed from the ledger, never from recollection.
- **Strategy check-in:** progress against the phase model and where-to-play choices (program-strategy section read for this); any anchor or scope decisions taken; portfolio balance of the quarter's investment.
- **Next-quarter commitments:** explicit, owner-attached, ledgered on close.
- Where the advisor produced briefs this quarter, cite them by workspace path rather than restating.

## Reflection mode

"How are the reviews trending" / at year boundaries: read the period's reviews from the workspace and the ledger; report commitment keep-rate (small-N honesty), recurring risk themes, metrics trajectory — patterns, not vibes, each traceable to a filed review.

## Guardrails

- The review reports; it does not spin. A red is a red with a cause and a correction.
- Preserved disagreements survive into the review when material ("engineering and finance read the cost trend differently; both views below").
- Licensed research is cited by title, never pasted (T3).
- Draft until he says sent (T4); the system never sends anything itself.
