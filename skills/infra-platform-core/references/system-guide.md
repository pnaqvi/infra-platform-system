# Infra-Platform-System — System Guide

*Document 5 of the help set · release 1.3, August 2026 · The complete reference: every skill in detail, how to invoke it, and how the system works as a whole. Canonical copy: `skills/infra-platform-core/references/system-guide.md`; a mirror ships in the bundle's `docs/`.*

## 1. What this system is

A standalone twelve-skill operating layer for Parvez's multi-year cloud infrastructure platform program (~1,000 engineers): advisors that know the program's doctrine and his recorded thinking, memory that compounds across sessions, a document workspace that is the program's system of record, and the plan → status → review cadence that runs it. Fully independent of any other skill system.

**Two data homes** (both git repositories):
- Memory — `~/ai_working_Directory/infra-platform-memory/`: ten sections, each holding positions (what he believes, with confidence and a would-change-my-mind line), a decisions ledger (with revisit triggers), and insights. The routing table is `MANIFEST.md`.
- Workspace — `~/ai_working_Directory/infra-platform-workspace/`: `reference/` (the indexed research library, pre-loaded with the program's Gartner corpus), `strategy/`, `tech-plans/`, `project-plans/` (including the standing `risk-register.md`), and `cadence/monthly|quarterly/<period>/` where each period's `plan.md`, `status.md`, review, and `metrics-snapshot.md` live together. The registry is `MANIFEST.md` — a document not registered there is lost to future sessions (tenet T10).

**Identity and voice** are guaranteed two ways: core's `references/profile.md` carries Parvez's full professional profile (role, scale, record, communication preferences) so every skill knows who it serves even on a machine with nothing else installed, and T12's prose scrub (`references/prose-hygiene.md`, the embedded be-human distillation) runs on everything he sends. On machines that also have parvez-system, the `parvez` and `be-human` skills are recognized as the richer parents and govern — the embedded copies are the standalone floor, and what he states live always wins.

**Twelve tenets** govern everything; the short version: depth over cost (T1), zero fabrication with provenance tags (T2), data classification (T3), human confirms every consequential step (T4), honest disagreement preserved (T5), instruction budget defended (T6), friction-driven improvement with versioning (T7), degradation announced (T8), empiricism via the shakedown (T9), the workspace is the system of record (T10), commitments ledgered never remembered (T11), shareable prose scrubbed (T12). Full text: core's SKILL.md.

**Frameworks** (first principles, critical thinking, outside view, second-order effects, strategy kernel, evolution mapping, art-of-war positioning, Kotter's leading change, the adoption chasm, OODA tempo, bias sweep, and the rest) live in one file: `infra-platform-core/references/methods.md`, with a selection table by problem type. Advisors read it before substantive analysis and name the methods they apply. Ask "what frameworks apply here?" anytime.

## 2. The twelve skills

### infra-platform-core — the operating framework
**Purpose:** the constitution: program profile, tenets, methods catalog, IPE doctrine (distilled from the Gartner corpus), the perspective-panel pattern, prose hygiene, the shakedown drill, and help mode.
**Invoke:** "help", "what can this system do", "which skill handles X", "what frameworks apply here", "think deeper", "convene a panel", "run the shakedown".
**Note:** you rarely address core directly — every other skill inherits from it. Where any skill conflicts with core on tenets, depth, or panel mechanics, core wins.

### infra-platform-memory — persistence and the pulse
**Purpose:** single owner of both homes: capture, recall, document filing, retrieval, the program fact-sheet, pulse mode, and maintenance.
**Invoke:** "remember this: …" (one sentence is enough; it structures, you confirm) · "what did we decide about X" / "what's my position on Y" · "file this as a tech plan / project plan / strategy doc" · "where is the Q3 review" · "run my pulse" · "run memory maintenance" (monthly) · "create a memory section for <topic>" · "export my <topic> positions".
**The pulse** is the anticipation pass — seven checks: commitments due/overdue, fired revisit triggers, aging positions (>12 months), cadence artifacts due or missing, fact-sheet staleness, risk-register rows unreviewed >90 days, and upcoming standing meetings without a prep. It offers itself at the first session of a week and whenever a cadence artifact opens; it reads, never writes.
**The fact-sheet** (`program-context.md` in program-strategy) is "what IS" — phase, products, owners, anchors, quarter's commitments, constraints. Every skill reads it first; keep it confirmed and you stop re-explaining the program.

### infra-platform-advisor — the strategy thought partner
**Purpose:** platform strategy, anchor and build-vs-buy decisions, architecture, adoption strategy, resilience — with a 6-lens brainstorming team (first-principles skeptic, scale-failure red team, platform-adoption advocate, industry SOTA expert, exec/regulator advocate, delivery realist).
**Invoke:** "quick take on X" (the default tier — ten minutes, full method, no team) · "help me think through X" · "should we anchor on Y" · "spin up the platform team" / "war-game Z" (team modes: sparring = one critique round; full = three rounds for decisions you'll socialize upward) · "review my open platform decisions" · "what's changed that bears on my anchors" (field brief — only intersections with your recorded thinking) · "make this an exec one-pager" (convert mode — content here, craft delegated to exec-writer).
**Behavior to expect:** it reads your positions first and argues with you when a recommendation contradicts one; it steelmans against your stated lean; team sessions stop at a mandatory checkpoint for your answers. First run: "bootstrap my platform positions" (~20-minute seeding interview).

### infra-platform-org-advisor — teams, roles, talent
**Purpose:** IPE team design out of the traditional org, the platform owner / architect / engineer roles, skills strategy (hire vs. train vs. partner), change resistance, and the head-of-platforms playbook. Org-level only — never individual personnel cases.
**Invoke:** "how should I structure the platform teams" · "design the IPE team for compute" · "what skills do we hire vs train" · "handle resistance from the storage team" · "draft the platform owner role" · "plan my first 100 days".

### infra-platform-metrics-advisor — measurement
**Purpose:** the four-pillar metric model (experience, adoption, operations, business outcomes), baselines and targets, Goodhart pairings, dashboards per audience, joint interpretation, and value-story soundness.
**Invoke:** "design our platform metrics" · "what should adoption target be" · "CES is low but adoption is high — what does that mean" · "is this value claim sound" · "build the KPI framework for the QBR".
**Boundary:** it owns whether the numbers are sound; comms owns making them land with an audience.

### infra-platform-reviews — the operating cadence
**Purpose:** the period cycle at monthly and quarterly grain: **plan** (forward), **status** (backward, updatable through the period), **review** (the MBR/QBR you send). Owns the commitments ledger: every promise in a sent artifact becomes a tracked row; every cycle opens from the ledger, not memory of meetings.
**Invoke:** "draft the September plan" · "update monthly status" · "start the August MBR" · "prep the Q3 QBR" · "what did we commit to last quarter" · "turn the review into a deck / Word doc" (rendering craft delegated to exec-writer).
**Behavior to expect:** cycles open pre-populated with due commitments and carry-forwards; the risk section derives from the standing register; reds carry cause and correction; nothing is `final` until you say sent, and sent artifacts are immutable.

### infra-platform-meeting-prep — the weekly grain
**Purpose:** one-page preps composed from what the system already holds — goal, asks, what they'll raise with your one-line answers, landmines (fired triggers, slipped commitments), carry-ins.
**Invoke:** "prep me for my staff meeting" · "get me ready for the vendor QBR" · "prep my 1:1 with the CIO" · "murder-board the prep" (hostile-question pass) · afterwards, "here's how it went" (debrief — commitments to the ledger, observations to stakeholders).
**Behavior to expect:** the pulse offers preps proactively for standing meetings; where the registers hold nothing on a topic, the prep says "no record" rather than inventing color.

### infra-platform-vendor-eval — the vendor lifecycle
**Purpose:** evaluations and comparisons, anchor-candidate assessments (the ~80%-coverage test), build-vs-buy support, lock-in registers with exit costs, renewal prep that opens from the vendor's recorded history, and claim stress-tests whose outcomes are checkable at renewal.
**Invoke:** "compare these observability vendors" · "assess X as our container anchor" · "should we buy Y or build it" · "how locked in are we on Z" · "the Y renewal is coming — prep me" · "is this vendor's claim real".
**Boundary:** it produces the evaluation; the anchor *decision* is the advisor's one-way-door call. Renewal postures feed meeting-prep for the meeting itself.

### infra-platform-comms — adoption pull
**Purpose:** the material that creates pull (doctrine: platforms win by being easier, never by mandate): launch announcements, adoption campaigns, value narratives per audience, success stories, recurring comms. Audience-first — every piece leads with what the reader gets; every claim is register-backed.
**Invoke:** "announce the container platform" · "push adoption of X" · "make the case to the CFO" · "write up what team Y did" · "draft the town-hall section on the platform".
**Behavior to expect:** before an adoption campaign it diagnoses the funnel — if the bottleneck is friction rather than awareness, it says so and routes to the advisor (or research) instead of shouting louder.

### infra-platform-portfolio-planning — allocation analysis
**Purpose:** the analysis behind planning cycles: annual budget construction (top-down envelope, bottom-up aggregation, or both meeting in the middle), quarterly commitments-vs-capacity against your demonstrated keep-rate, portfolio rebalancing (core/adjacent/transformational), scenario stress, and the written where-NOT list.
**Invoke:** "build next year's budget" · "prep quarterly planning" · "are we overcommitted vs capacity" · "rebalance the portfolio" · "stress-test the plan".
**Boundary — worth remembering:** "draft the September plan" (the cadence *artifact*) is reviews; this skill owns the *analysis* that feeds it, by citation.

### infra-platform-exec-writer — what you send
**Purpose:** document craft: fixed anatomies (board/risk-committee memo, CIO/CEO one-pager, pre-read, talking points, executive email, review polish), pre-send review, murder-board, and the calibration loop that learns your voice from your rewrites (the `exec-writing` memory section: style-notes and audiences).
**Invoke:** "make this exec-ready" · "turn this brief into a one-pager" · "tighten for the board" · "review before I send" · "murder-board this document" · and the compounding one: **"this is what I sent"** — it diffs your sent version against the draft and proposes style-note entries.
**Behavior to expect:** it never originates analysis or numbers; confidence levels and preserved disagreements survive translation; T12 prose hygiene is enforced on everything.

### infra-platform-research — user evidence in
**Purpose:** the inbound counterpart to comms: interview guides, listening-tour wave synthesis, per-persona pain maps, adoption barriers ranked by frequency × severity — under a hard evidence rule: every claimed theme cites ≥2 verbatims; one source is an observation, not a pattern; no invented user sentiment ever.
**Invoke:** "prep the interview guide for product teams" · "synthesize these interviews" · "what are the themes in this feedback" · "build the pain map from the listening tour" · "what's blocking adoption per the research" · "what's changed since the last tour".
**Routing of findings:** friction → advisor; awareness → comms; measurement gaps → metrics-advisor.

## 3. How the skills compose

The system is designed as chains, not islands: a **vendor renewal** runs vendor-eval (posture) → meeting-prep (the room) → reviews (the commitment made). An **anchor decision** takes vendor-eval's evaluation into the advisor's team, lands in the architecture ledger, and its milestones surface in planning. A **QBR** composes reviews (the artifact) + planning (allocation analysis, cited) + metrics-advisor (soundness) + the risk register, then passes through exec-writer for the craft. A **listening tour** runs research (synthesis) → advisor (strategy response) → comms (the story out). And "run my pulse" is the anticipation pass over all of it.

## 4. Rhythms

**Daily:** pulse when offered · quick takes · captures in the moment ("remember this: …") · preps before meetings, debriefs after.
**Monthly:** plan → status → MBR cycle · "run memory maintenance".
**Quarterly:** planning analysis → quarterly plan → QBR with commitment scorecard · "review my open platform decisions" · "run system maintenance" (friction-log review, T6 consolidation, versioning).
**Annually:** budget construction (planning) · strategy refresh (advisor) · portfolio rebalance.
**Once, first:** install → **"initialize the infra-platform system"** — the guided sequence (shakedown → fact-sheet → bootstrap interview → standing meetings → risk register → open the period → first pulse) that ends with a fully-initialized scorecard. Full ~90 min or express ~30.

## 5. Getting unstuck

"Help" or "which skill handles X" answers from the help set (the help set: skills-reference, this system guide, why, install-guide, how-to-use, and initialization). When the system mis-fires or feels heavy: "log that as friction" — the `system` section feeds quarterly maintenance, which is how the system earns its next version. Version check: the bundle's `VERSION` file and each skill's header line.
