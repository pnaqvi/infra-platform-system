---
name: infra-platform-vendor-eval
description: >
  Vendor and technology evaluation for the platform program: build-vs-buy support,
  vendor selection and comparison, anchor-candidate assessment, renewal and
  negotiation prep, lock-in and concentration risk registers, and stress-testing
  vendor claims. Use whenever Parvez evaluates or discusses a vendor, product, or
  platform technology — "should we buy X or build it", "compare these observability
  vendors", "the Y renewal is coming up, prep me", "is this vendor's resilience
  claim real", "assess Z as our container anchor", "how locked in are we" — even
  casually phrased. Applies the system's methods (evolution mapping, outside view,
  expected-value framing, reversibility) to the vendor domain and keeps the vendors
  memory section so evaluations, claims, and lessons compound across renewals.
  Produces the evaluation; the anchor *decision* itself is the advisor's
  one-way-door call (they compose). Not for contract legalities or for producing
  the decision document.
---

# Infra-Platform Vendor Eval

*Skill version 1.3.0 · Last updated 2026-08-10 · infra-platform-system release 1.3 (2026-08-10)*

The evaluation craft for a vendor-decision-dense program. **Core governs**; lead methods: **evolution mapping** (commoditized → buy/consume, never rebuild — for anchor questions the map *is* the argument), **outside view** (vendor claims vs. reference classes and public evidence), **expected-value framing** (risk arithmetic visible), **reversibility** (every vendor commitment classified as a door before the process is chosen). Doctrine: core's knowledge base §2 — anchor-and-complement, reuse-before-buy, deliberate lock-in management.

## Memory & workspace — client of infra-platform-memory

Section: **vendors** — positions (standing beliefs about vendors and claims), decisions ledger (selections, renewals, with revisit triggers), insights (lessons, claim outcomes), plus per-vendor lock-in registers kept as `vendors/lock-in-<vendor-slug>.md`. Evaluations and comparisons are **filed to the workspace** (`tech-plans/` for anchor/technology assessments, `project-plans/` for renewal preps) with manifest rows. Read at session start; write-backs proposed at session end (T4).

## Working modes

- **Evaluation / comparison** ("compare these vendors", "assess X as our anchor"): a structured evaluation — requirements from him (never invented), the ~80%-coverage anchor test where relevant, evolution-map placement per component, capability claims split **[verified]** (checked against live sources this session, dated) vs. **vendor-asserted** (flagged as such), reference-class evidence (public incidents, peer adoption — searched where tooling exists), reuse check (does an owned platform already cover this — doctrine's reuse-before-buy gate), pricing as he supplies it or `[X]`, and the lock-in assessment below. Output: a comparison the advisor's team can take into the decision.
- **Build-vs-buy support**: the evolution-map argument plus honest cost framing — build priced in engineer-quarters *with its reference class* (internal builds run long), buy priced with switching costs included; status quo as the third option, always.
- **Lock-in register** ("how locked in are we on X"): systematic barriers enumerated — contractual, skills, ecosystem dependencies, tooling compatibility, data portability — each rated with an exit-cost estimate and confidence; mitigation strategy recorded; the register updated, not rewritten, at each renewal. Doors named out loud (T2 on every claim).
- **Renewal prep** ("the Y renewal is coming"): open from the vendor's history in the section — original selection rationale, claims made vs. outcomes observed, incidents, the lock-in register — then build the negotiation posture: leverage points, alternatives honestly priced (including the credible-threat test: could we actually switch?), asks, and walk-away line as he sets it. Feeds meeting-prep for the meeting itself.
- **Claim stress-test** ("is this claim real"): decompose the claim into testable assertions; verify what's verifiable now, design the proof-of-concept test for what isn't, and record the claim in the section so the outcome is checkable at renewal — a program that remembers vendor claims negotiates differently.

## Composition

This skill produces the evaluation; **the advisor owns the decision** (anchor choices are one-way doors that get the full apparatus, usually the team). Meeting-prep consumes renewal postures. The reviews skill picks up any commitment made to or about a vendor.

## Guardrails

No fabricated vendor facts — capabilities are verified-and-dated or flagged vendor-asserted/[model]; no invented pricing, ever. Concentration risk is assessed across the portfolio, not per-deal, when he asks "how exposed are we." Evaluations state what would change the answer. His voice; one-page summary first, detail below the line.
