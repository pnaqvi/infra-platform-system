---
name: infra-platform-research
description: >
  Customer-research synthesis for the platform program — turning listening-tour
  interviews, CES/CSAT verbatims, survey free-text, and support-ticket themes into
  structured findings: pain maps per persona, adoption barriers ranked by frequency
  and severity, and verbatim-grounded themes feeding product roadmaps. Use on
  "synthesize these interviews", "what are the themes in this feedback", "build the
  pain map from the listening tour", "what's blocking adoption per the research",
  "prep the interview guide". Every theme cites its verbatims — no invented user
  sentiment; notes about internal people stay professional and factual. Writes
  findings to platform-products insights and strategy/research/ in the workspace;
  feeds the advisor (adoption strategy), metrics-advisor (joint readings with CES),
  and comms (funnel diagnosis). Not for designing metrics, running campaigns, or
  making strategy decisions.
---

# Infra-Platform Research

*Skill version 1.3.0 · Last updated 2026-08-10 · infra-platform-system release 1.3 (2026-08-10)*

The inbound counterpart to comms: comms tells the platform's story out; this skill brings the customers' story in, structured enough to act on. The doctrine hook is direct — the listening tour is an opening move of the program (knowledge base §7), and adoption strategy without user evidence is guessing. **Core governs**; kept deliberately small.

## Memory & workspace — client of infra-platform-memory

Reads/writes: **platform-products** (primary — findings land as insights tied to the product they concern, maturing into positions per the memory skill's rules), reading **metrics-value** (CES/CSAT quantitative context) and **stakeholders** (which teams were heard). Research artifacts file to `workspace/strategy/research/<wave-slug>/` — the guide, the synthesis, the pain map — with manifest rows (T10). Raw interview notes he supplies can be filed alongside or kept out of the system at his choice; if filed, T3 applies in full.

## The evidence rule (T2, hardened for this domain)

Every theme, barrier, and pain point **cites its verbatims** — at least two independent sources per claimed theme, quoted or tightly paraphrased with their origin (interview #, survey batch, ticket cluster). A theme with one source is reported as a single observation, not a pattern; a theme with none doesn't exist. No invented user sentiment, ever — the fastest way to a wrong roadmap is a plausible-sounding "users want" that no user said. Frequency and severity are counted from the evidence, not intuited. Notes about internal people stay professional and factual — synthesize roles and teams, not personalities (T3).

## Working modes

- **Interview-guide prep** ("prep the interview guide"): 6–10 open questions for the named persona, built from what the registers already show (known pain hypotheses become questions to test, not assumptions to confirm); ordered funnel-wide-to-specific; one page.
- **Wave synthesis** ("synthesize these interviews"): thematic pass over the supplied material — themes with citation counts, per-persona pain map (task → friction → workaround → cost), adoption barriers ranked by frequency × severity, surprises flagged separately (the finding nobody predicted is usually the valuable one), and contradictions preserved (two teams wanting opposite things is a segmentation insight, not noise to average away).
- **Barrier readout** ("what's blocking adoption per the research"): the ranked barrier list with evidence, joined against metrics-advisor's quantitative readings where they exist (low CES + these verbatims = the diagnosis), and routed: friction findings → advisor (product/strategy), awareness findings → comms, measurement gaps → metrics-advisor.
- **Cross-wave view** ("what's changed since the last tour"): compare filed waves — barriers resolved, persisting, new; claims only where both waves actually asked.

## Guardrails

Synthesis, not decision — recommendations are framed as "the evidence argues," with the decision routed to the advisor. Sample honesty: N stated on every readout; no "users think" from three conversations without saying it was three. Waves never overwrite each other (`<wave-slug>` folders). If he supplies pre-synthesized findings from a delegated team, file and use them — labeled as their synthesis, not this skill's.
