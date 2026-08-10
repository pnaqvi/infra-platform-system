---
name: infra-platform-portfolio-planning
description: >
  Allocation analysis for the platform program's planning cycles — annual budget
  construction and strategy refresh, quarterly planning, and portfolio rebalancing
  across the program's investment envelope. Use whenever Parvez plans or allocates:
  "build next year's plan", "construct the budget", "how should I allocate across
  products", "rebalance the portfolio", "are we overcommitted vs capacity",
  "stress-test the plan", "prep quarterly planning" — even casually phrased.
  Applies portfolio balance (core/adjacent/transformational), commitments-vs-capacity
  from the reviews ledger, scenario stress, and theory of constraints; states every
  where-NOT. Reads program-strategy (primary), metrics-value, the reviews ledger,
  and the risk register; files analyses to project-plans/ and feeds — never
  restates — the cadence plan.md that infra-platform-reviews owns. "Draft the
  September plan" (the artifact) is reviews; this skill owns the analysis behind
  it. Not for the MBR/QBR documents or metric design.
---

# Infra-Platform Portfolio Planning

*Skill version 1.3.0 · Last updated 2026-08-10 · infra-platform-system release 1.3 (2026-08-10)*

The allocation brain behind the program's planning cycles. **Core governs**; lead methods: **portfolio balance** (every allocation classified core / adjacent / transformational, current and intended ratios stated), **outside view** (planned vs. delivered actuals from the ledger — the program's own base rate beats optimism), **scenario stress** (the plan tested against the 1–2 dominant uncertainties), **theory of constraints** (allocation follows the bottleneck, not peanut butter), and **playing-to-win** (a plan without a where-NOT is a budget allocation, not a strategy). Doctrine: knowledge base §4 (roadmap phases) and §5 (co-investment with Finance/Security/Data/AI).

## Boundary — analysis here, artifact in reviews

This skill produces the **allocation analysis**; infra-platform-reviews owns the cadence artifacts. "Draft the September plan" → reviews. "Build next year's budget" / "rebalance across products" → here, with the result feeding the period's `plan.md` by citation, never restatement. Anchor and vendor decisions stay with the advisor and vendor-eval; this skill prices and sequences what those decisions imply.

## Memory & workspace — client of infra-platform-memory

Sections: **program-strategy** (primary — allocation positions and planning decisions land here with revisit triggers), reading **metrics-value** (baselines and value evidence), the **reviews ledger** (commitments and their keep-rate — the honest capacity signal), and the **risk register**. Analyses are **filed to the workspace**: `project-plans/planning/<cycle-slug>/` with manifest rows. All envelope figures, headcounts, and unit costs are `[his-input]` or `[X]` — a budget with invented numbers is worse than no budget (T2, absolute here).

## Working modes

- **Annual budget construction** ("build next year's budget"): establish the direction first — **top-down envelope** (he states or `[X]` the envelope; allocate by portfolio class and product against strategy) or **bottom-up aggregation** (collect product/team asks, test against capacity and strategy, surface the cut list) — or both, meeting in the middle with the gaps named. Output: allocation by product and class, the where-NOT list (what gets "no" or "later," written down), co-investment asks (Finance/Security/Data/AI per doctrine), and the 2–3 decisions the budget forces. Every year-over-year change carries a reason.
- **Quarterly planning** ("prep quarterly planning"): commitments-vs-capacity — open ledger rows plus proposed new commitments against demonstrated delivery rate (outside view on the program's own actuals; small-N honesty early); overcommitment named with the constraint that causes it; the quarter's portfolio ratio stated. Feeds the quarterly `plan.md`.
- **Rebalancing** ("rebalance the portfolio"): current allocation vs. intended ratios vs. what results argue; migration priced (what moves, what it displaces, switching cost); reversibility classified per move.
- **Stress-test** ("stress-test the plan"): scenario pass on the dominant uncertainties (demand shift, anchor-cost change, hiring reality, regulatory demand); bets that survive all scenarios named as the spine, the rest priced as hedges; pre-mortem on the plan itself.

## Guardrails

The status quo (current allocation rolled forward) is always a priced option. Keep-rate claims obey small-N honesty. Planning decisions land in the ledger with revisit triggers ("revisit the platform-products split when adoption crosses [X]"). One-page summary first; allocation tables below the line. Panels per core's pattern for contested cycles — checkpoint mandatory.
