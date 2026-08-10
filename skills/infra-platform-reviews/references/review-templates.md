# Cadence Templates — Plan, Status, MBR & QBR Anatomy

*The document shapes. Every number is [his-input] or [X]; trends shown vs. target AND vs. last period; joint metric readings per the metrics advisor's rules. Standard filenames inside the period folder: `plan.md`, `status.md`, `mbr.*`/`qbr.*`, `metrics-snapshot.md`.*

## Monthly / Quarterly Plan (`plan.md`) — 1–2 pages

1. **Period objectives** — 3–5, each with its success evidence named up front.
2. **Milestones & deliverables** — item | owner | due | depends-on. These become ledger rows when the plan is committed.
3. **Carry-forwards** — ledger-derived items moving into this period, with why.
4. **Capacity & constraints** — team availability, freezes, known bottleneck (theory-of-constraints note).
5. **Risks entering the period** — top 3–5 with mitigations.
6. **Asks** — what the period needs unblocked, priced where possible.
Quarterly plans add: phase-model position, where-to-play moves this quarter, portfolio balance of planned spend.

## Monthly / Quarterly Status (`status.md`) — running document, closed at period end

1. **Plan scorecard** — every plan item: delivered / slipped / at-risk / dropped, one-line cause per non-delivery. No adjectives.
2. **Metric actuals** — recorded to `metrics-snapshot.md` (metric | actual | target | prior | joint reading).
3. **Unplanned work absorbed** — what displaced plan items, honestly.
4. **Incidents & learnings** — material ones only, each with its follow-through owner.
5. **New risks / changed risks.**
6. **Notes for the review** — candidate headlines, wins worth naming, decisions brewing.


## Monthly Business Review (MBR) — 2–4 pages / ~10–12 slides

1. **Headline assessment** — one paragraph: on/off track and why; the single thing leadership must know this month.
2. **Metrics — four pillars** — the adopted essential set, each with: actual, target, trend arrow vs. last month, and one-line joint reading where metrics interact (e.g., "adoption up, CES down — usage growing faster than the experience; provisioning wizard rework prioritized").
3. **Milestones vs. plan** — delivered / slipped / at-risk this month; slips carry cause and correction, not adjectives.
4. **Commitments status** — ledger-derived: due this period, kept/missed/moved.
5. **Wins & deliveries worth naming** — max 3–5, each tied to a customer or metric effect.
6. **Risks & issues** — derived from the standing risk register (`project-plans/risk-register.md`): new and changed rows only, each with owner and next action; standing risks referenced by ID, not restated; register rows unreviewed >90 days flagged.
7. **Decisions needed & asks** — what leadership must decide or unblock, priced where possible.
8. *(Appendix, below the line)* — detail tables, incident notes, per-product status.

## Quarterly Program Review (QBR) — the fuller story

1. **Headline assessment** — the quarter in one paragraph; program confidence with trajectory.
2. **Commitment scorecard** — every commitment from last QBR: kept / missed / moved, ledger-derived, with a one-line cause per miss.
3. **Strategy check-in** — progress against the phase model (strategy → team → MVP → scale); where-to-play choices exercised; anchor/scope decisions taken this quarter (cited to their briefs by workspace path); portfolio balance of the quarter's spend (core/adjacent/transformational — infra-platform-portfolio-planning owns the underlying allocation analysis; cite its filed analyses rather than redoing them).
4. **Metrics — four pillars, quarterly view** — trend lines vs. targets across the quarter; the joint readings; baseline movements.
5. **Delivery review** — major milestones, MVP/product progress, adoption story per product.
6. **Org & talent** — teams stood up, skills progress, hiring reality vs. plan (org-level only).
7. **Risks & dependencies** — the quarter's material risks with mitigations; regulatory/audit posture.
8. **Financials** — spend vs. budget, chargeback/recovery posture, unit-cost trend. All `[his-input]`/`[X]`.
9. **Next-quarter commitments** — explicit, owner-attached; these become ledger rows on close.
10. **Decisions needed & asks.**
11. *(Appendix)* — supporting detail.

## Rendering notes

- Markdown is the canonical workspace record; pptx/docx are renderings of it.
- Deck rendering: one section per numbered item above; headline slide first; metrics as tables/charts from his actuals only; no decorative filler.
- Status colors, if used, are earned: green = on plan with evidence; amber = recoverable slip with a correction; red = miss or blocked decision. Never color-average a red into an amber.
- Filing: `cadence/monthly/YYYY-MM/` and `cadence/quarterly/YYYY-QN/` under standard names; renderings as `mbr.pptx`/`mbr.docx` (or qbr.*) beside the canonical `.md`; manifest row on every filing (T10).
