# Thought-Partner Gap Review — infra-platform-system v1.2 · FINAL (v2)

*2026-08-10 · Converged at round 3 (both build-readiness lenses APPROVED) · lightweight variant, lenses as sequential passes (T8). Evidence: the v1.2 bundle text + Parvez's checkpoint answers (the sole usage evidence — the system is **not yet installed**). Full decision trail in `review/decision-log.md`.*

## Headline

v1.2 closed the design gaps it targeted, with three small defects to patch. The binding constraint is **activation, not construction** — nothing is installed, every register is empty — *and* the calendar has removed the luxury of waiting: **budget season starts in ~3 weeks**, which fired the portfolio-planning trigger; the exec-writer trigger fired at 2× its threshold (outputs rewritten 4–5 times against a "twice" gate); and research-synthesis promotes on the owner's directive. The recommendation is one sequence: **activate this week, then ship v1.3 with three skills in calendar order** — planning first.

## v1.2 audit verdicts (question 1)

| Target | Verdict | Basis |
|---|---|---|
| Pulse | **Partially closed — wiring defect** | 5-item walk is well specified, but the risk-register template promises ">90-day risks flagged at pulse" and the pulse list omits risk staleness (spec/template contradiction). Run-assurance weak: nothing cadences the pulse. |
| Fact-sheet | **Partially closed** | Wired explicitly in memory + advisor only; six skills inherit implicitly — inconsistent wiring, one-line normalization fix. Staleness catch specified. Live file `[X]` (unactivated). |
| Risk register | **Closed in text** | Reviews derivation, IDs, >90-day flags all real in the installed text. Usage: none. |
| Shakedown | **Partially closed** | Steps match v1.2; storage mechanics sandbox-validated at build; **unrun on the target machine** — dimension 7 caps at partial until it runs where the system lives. |
| New-skill boundaries | **Mostly clean — one regression** | Compositions stated in text. **R1:** metrics-advisor's description ("show value to the CFO") collides with comms's ("convince/make the case to the CFO") — routing precision regressed on the most likely exec ask. One-line fix. **R2:** +~50% instruction budget (≈18.7k words) in one release with zero usage — T6 is now a live constraint: v1.3 must account for every word added and displaced. |

## Scorecard (text / in practice)

Knows-the-program: strong / **empty** · Remembers: strong / empty · Challenges: strong / untested · Anticipates: partial (pulse defect + run-assurance) / never run · Real moments: much improved; silent at sev-1 aftermath, annual planning *(now urgent)*, listening-tour synthesis, audit-prep depth / unknown · Produces-what-he-sends: **partial** — outputs rewritten 4–5× per checkpoint answer 3 · Honest-about-itself: specified / **shakedown unrun = open finding**.

## Answer to question 2 — ranked, classified, priced

**0. Activate (before anything else — this week, before budget season).** Install → shakedown → bootstrap interview → fact-sheet fill → open the September plan. Build effort: zero. Converts every unknown to evidence and makes the system useful for the cycle that starts in three weeks. *All lenses unanimous; the minimalist's condition c1.*

**1. Fix-now defects (ship inside v1.3; net ≈ +45/−30 words; high confidence):** (a) pulse item 6 — risk-register rows unreviewed >90 days; (b) resolve the CFO description collision (metrics-advisor keeps soundness, drops delivery phrasing); (c) normalize fact-sheet wiring to the memory client rule (drop the advisor special-case); (d) pulse item 7 + run-assurance — per answer 4, the pulse proactively offers preps for upcoming standing/named meetings lacking one, and is itself offered in the first substantive session of a week and whenever a cadence artifact opens. Degradation stated: no calendar access — "upcoming" means standing meetings recorded in the stakeholders section plus meetings he names (T8).

**2. infra-platform-portfolio-planning — new-skill-now, sequenced FIRST (trigger fired, past-due).** Allocation analysis for planning cycles: annual budget construction, quarterly planning, portfolio rebalancing (core/adjacent/transformational), commitments-vs-capacity, scenario stress. **Boundary redrawn by the domain-expert (round 1):** planning owns the *analysis*; reviews keeps the cadence *artifact* — planning feeds `plan.md`, never restates its anatomy. Effort: ~1 session; ~650 words; medium-high confidence. Full spec: Appendix B1.

**3. infra-platform-exec-writer — new-skill-now (trigger fired at 2×).** Document craft for what he sends upward: board memo, CIO one-pager, talking-points anatomies; audience notes; voice calibration ("this is what I sent"); T12 enforcement centralized. **Displaces** the advisor's convert-mode craft text and reviews' rendering notes (both keep their triggers, delegate the craft) — net word growth near zero (minimalist condition c2). New memory section: `exec-writing` (style + audience notes). Effort: ~1 session; medium-high confidence. Spec: Appendix B2.

**4. infra-platform-research — new-skill-now (owner directive).** Listening-tour and customer-research synthesis: interview and CES-verbatim thematic synthesis → pain maps and adoption-barrier findings → `platform-products` insights and a `strategy/research/` workspace home; feeds the advisor (adoption strategy), metrics-advisor (joint readings), comms (funnel diagnosis). Consolidation into comms or metrics-advisor argued and rejected on inbound/outbound and qualitative/quantitative ownership. Kept minimal: <700 words. T3 note: verbatims about internal people stay professional-and-factual. Effort: ~1 session; medium confidence. Spec: Appendix B3.

**5. Defer-until-friction (unchanged, triggers restated):** incident-command analog — first platform sev-1 whose exec aftermath feels unsupported; audit/exam-prep depth — first regulator touchpoint on the program; risk-management-as-a-mode — the register's first quarter of real rows outgrowing the reviews add-offer.

**Status-quo baseline, argued and resolved:** "build nothing; activate and let the friction log decide" was the strongest it has ever been — and it loses on the record only because the trigger mechanism *worked*: two gates fired by their own stated rules and one promotion is the owner's call under T4. **Preserved disagreement (T5):** the minimalist maintains that shipping three unused skills before first activation is a process smell regardless of fired triggers; the majority holds that a trigger system you override when it fires is not a trigger system. Both positions carried.

## Roadmap

**This week:** activation sequence (item 0). **v1.3 (target: before September):** fixes (1a–d) + planning + exec-writer + research; shakedown extended with one drill step per new skill; twelve-skill routing sweep at package time; CHANGELOG + version re-baseline to 1.3. **v1.4 (post-usage, ~Q4 2026):** first friction-log-driven maintenance; deferred-trigger re-check (October planning season will test planning + exec-writer under load); consolidation pass per T6 with real usage data.

## Open questions

1. Budget mechanics: does the end-of-August cycle need envelope construction (top-down allocation) or bottom-up aggregation first? Shapes planning's first mode.
2. Research cadence: is the listening tour one concentrated wave or continuous through the year? Shapes whether research keeps per-wave workspace folders.
3. Exec-writer calibration: can you share 1–2 (sanitized) examples of the rewrites you made — the delta is the skill's best training signal, captured as style notes.

---
*APPENDICES BELOW THE LINE*

## Appendix A — Eleven scenario walkthroughs (verdict lines)

1. Weekly staff meeting — covered (meeting-prep); proactive offer arrives with fix 1d. 2. Anchor decision — covered end-to-end (vendor-eval evaluation → advisor team decision). 3. Vendor renewal — covered (vendor-eval → meeting-prep → reviews commitment). 4. Sev-1 + exec aftermath — **silent**; deferred with trigger. 5. Annual planning/budget — **silent today, urgent**; closed by item 2. 6. Regulator/audit touchpoint — generic prep only; deferred with trigger. 7. Listening tour — research *doing* is his; synthesis **silent today**; closed by item 4. 8. December QBR crunch — covered (reviews + ledger + risk register). 9. Skeptical-CFO challenge — covered post-fix 1b (metrics-advisor soundness → comms delivery, collision removed). 10. New-deputy onboarding — partially covered (memory export + fact-sheet); acceptable. 11. Low-discipline month — improved by fix 1d (pulse self-offers, maintenance nudge); residual risk accepted and owned by the activation habit, not more machinery.

## Appendix B — New-skill specs (build-ready)

**B1 · infra-platform-portfolio-planning** — *Description (≤1024 chars):* "Allocation analysis for the platform program's planning cycles — annual budget construction and strategy refresh, quarterly planning, and portfolio rebalancing across the program's investment envelope. Use whenever Parvez plans or allocates: 'build next year's plan', 'construct the budget', 'how should I allocate across products', 'rebalance the portfolio', 'are we overcommitted vs capacity', 'stress-test the plan', 'prep quarterly planning' — even casually phrased. Applies portfolio balance (core/adjacent/transformational), commitments-vs-capacity from the reviews ledger, scenario stress, and theory of constraints; states every where-NOT. Reads program-strategy (primary), metrics-value, and the reviews ledger; files analyses to project-plans/ and feeds — never restates — the cadence plan.md that infra-platform-reviews owns. 'Draft the September plan' (the artifact) is reviews; this skill owns the analysis behind it. Not for the MBR/QBR documents or metric design." *Reads:* program-strategy, metrics-value, reviews ledger, risk register. *Writes:* program-strategy positions/decisions; `project-plans/` analyses. *Does NOT:* produce cadence artifacts (reviews), design metrics (metrics-advisor), make anchor calls (advisor). *Displaces:* nothing (new concern); QBR template's strategy check-in gains one cross-reference line.

**B2 · infra-platform-exec-writer** — *Description:* "Executive document craft for everything Parvez sends upward or outward from the platform program — board and risk-committee memos, CIO/CEO one-pagers, pre-reads, decision docs, talking points, executive emails, and the polish pass on MBR/QBR renderings. Use on 'make this exec-ready', 'tighten for the board', 'turn this brief into a one-pager', 'review before I send', 'murder-board this document', and 'this is what I sent' (style calibration — learns his voice from his rewrites). Owns document anatomies per type, the exec-writing memory section (style + audience notes), and T12 enforcement; content and analysis come from the advisor, reviews, planning, and comms — this skill owns the craft. The advisor's convert mode and reviews' renderings delegate here when present. Not for adoption marketing (infra-platform-comms) or analysis." *Reads:* new `exec-writing` section (style-notes.md, audiences.md), the source brief/review. *Writes:* exec-writing section; finished docs to their workspace homes. *Does NOT:* originate analysis or adoption comms. *Displaces:* advisor convert-mode craft paragraph; reviews rendering notes (~120 words reclaimed).

**B3 · infra-platform-research** — *Description:* "Customer-research synthesis for the platform program — turning listening-tour interviews, CES/CSAT verbatims, survey free-text, and support-ticket themes into structured findings: pain maps per persona, adoption barriers ranked by frequency and severity, and verbatim-grounded themes feeding product roadmaps. Use on 'synthesize these interviews', 'what are the themes in this feedback', 'build the pain map from the listening tour', 'what's blocking adoption per the research', 'prep the interview guide'. Every theme cites its verbatims (T2 — no invented user sentiment); notes about internal people stay professional and factual (T3). Writes findings to platform-products insights and strategy/research/ in the workspace; feeds the advisor (adoption strategy), metrics-advisor (joint readings with CES), and comms (funnel diagnosis). Not for designing metrics, running campaigns, or strategy decisions." *Reads:* platform-products, metrics-value, stakeholders; raw inputs he supplies. *Writes:* platform-products insights; `strategy/research/<wave-slug>/`. *Does NOT:* own the metric model, outbound comms, or decisions. *Displaces:* comms's funnel-diagnosis sentence gains a pointer (net ~0).

## Appendix C — T9 drills for v1.3

Planning: toy allocation across 3 mock products with a deliberately overcommitted ledger → PASS = overcommitment surfaced with the constraint named. Exec-writer: convert a sandbox advisor brief to a one-pager → he marks what he'd rewrite → delta lands in style-notes. Research: 5 synthetic interview snippets → themes each citing ≥2 verbatims, no orphan claims. Shakedown gains these as steps 11–13.
