# Infra-Platform-System — Skills Reference

*Document 1 of 4 · v1, August 2026. The catalog: every skill, what it does, how to invoke it.*

| Skill | What it does | Typical invocations |
|---|---|---|
| **infra-platform-core** | Operating framework: program profile, depth mandate, methods catalog, IPE knowledge base, tenets, panel pattern, help mode | "help", "what can this system do", "what frameworks apply here", "convene a panel" |
| **infra-platform-memory** | All persistence: memory registers (9 sections) + document workspace (strategy, tech plans, project plans, reviews, reference). Capture, recall, filing, retrieval, maintenance | "remember this", "what did we decide about X", "file this tech plan", "where is the Q2 review", "run memory maintenance" |
| **infra-platform-advisor** | Standing thought partner for platform strategy, anchors, build-vs-buy, architecture, adoption, resilience; convenes the 6-lens brainstorming team; review/field-brief/convert modes | "help me think through X", "should we anchor on Y", "spin up the platform team", "review my open platform decisions", "make this an exec one-pager" |
| **infra-platform-org-advisor** | Org & talent: IPE team design, the three roles, skills strategy, hiring/partnering, change resistance, head-of-platforms playbook. Org-level only — no individual cases | "structure the platform teams", "what do we hire vs train", "handle resistance from the storage team", "plan my first 100 days" |
| **infra-platform-metrics-advisor** | Measurement: four-pillar metrics design, baselines/targets, ownership, dashboards, interpretation, value story | "design our platform metrics", "what should adoption target be", "CES is low but adoption is high — meaning?", "show value to the CFO" |
| **infra-platform-meeting-prep** | One-page preps for any meeting composed from what the system holds: goal, asks, what they'll raise, one-line answers, landmines, carry-ins; murder-board option; debrief capture | "prep me for my staff meeting", "get me ready for the vendor QBR", "here's how it went" |
| **infra-platform-vendor-eval** | Vendor evaluation craft: comparisons, anchor-candidate assessments, build-vs-buy support, lock-in registers, renewal prep, claim stress-tests; the advisor makes the decision | "compare these observability vendors", "the Y renewal is coming, prep me", "how locked in are we on X" |
| **infra-platform-comms** | Adoption communications — the material that creates pull: launch announcements, adoption campaigns, value narratives, success stories, recurring comms; audience-first, evidence-backed | "announce the container platform", "make the case to the CFO", "push adoption of X" |
| **infra-platform-portfolio-planning** | Allocation analysis for planning cycles: annual budget construction, quarterly commitments-vs-capacity, rebalancing, scenario stress; feeds — never restates — reviews' plan.md | "build next year's budget", "are we overcommitted", "rebalance the portfolio", "stress-test the plan" |
| **infra-platform-exec-writer** | Document craft for what he sends: board memo / one-pager / pre-read / talking-points anatomies, pre-send review, murder-board, style calibration from his rewrites | "make this exec-ready", "review before I send", "this is what I sent" |
| **infra-platform-research** | Customer-research synthesis: interview guides, wave synthesis with verbatim-cited themes, pain maps, ranked adoption barriers | "synthesize these interviews", "build the pain map", "what's blocking adoption per the research" |
| **infra-platform-reviews** | The full operating cadence: monthly/quarterly **plan → status → review (MBR/QBR)**; opens from the commitments ledger, files everything to the period folders, renders md/pptx/docx | "draft the September plan", "update monthly status", "start the August MBR", "prep the Q3 QBR", "what did we commit to last quarter" |

## Which skill handles…

- *A strategy/architecture question or the final anchor decision* → advisor. *Budget, allocation, rebalancing* → portfolio-planning ("draft the September plan" — the artifact — stays with reviews). *A document to send* → exec-writer. *User evidence to synthesize* → research. *Vendor evaluation, comparison, renewal* → vendor-eval. *A meeting tomorrow* → meeting-prep. *Announcing or selling the platform* → comms. *A people-structure question* → org-advisor. *A "how do we measure" question* → metrics-advisor. *The monthly/quarterly document* → reviews. *Storing or finding anything* → memory. *Questions about the system itself* → core (help mode).
- Skills compose: a QBR (reviews) reads strategy progress, the metric model, and the standing risk register; a vendor renewal runs vendor-eval → meeting-prep → reviews (the commitment); an anchor decision takes vendor-eval's evaluation into the advisor's team; comms turns metrics-advisor's value story into the piece that ships. exec-writer polishes what reviews and the advisor produce; research feeds the advisor, metrics-advisor, and comms; planning's analysis backs the plan.md reviews files. "Run my pulse" (memory) is the anticipation pass over all of it.

## Where things live

- Memory registers: `~/ai_working_Directory/infra-platform-memory/`
- Documents, plans, reviews: `~/ai_working_Directory/infra-platform-workspace/` — reference library (indexed) in `reference/`; each period's plan/status/review/metrics together in `cadence/monthly/YYYY-MM/` and `cadence/quarterly/YYYY-QN/`
- Skills: `~/.claude/skills/infra-platform-*` (Claude Code / Desktop) or saved per-account in claude.ai.
