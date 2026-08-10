# Thinking Methods — The Framework Catalog

*The single source of problem-solving frameworks for the infra-platform-system. Every skill applies these; each names which methods are its leads. Select by problem type — running every method on every issue is checkbox thinking, not rigor.*

## Selection by issue type

| Issue type | Lead methods | Supporting |
|---|---|---|
| Option selection ("should we adopt X") | First-principles decomposition, outside view, inversion | Second-order effects, bias sweep, expected-value framing, reversibility |
| Root-cause diagnosis ("why does X keep happening") | Causal-chain + five-whys, systems thinking, theory of constraints | Base rates, bias sweep |
| Org / operating-model design | Second-order incentive effects, Chesterton's fence | Outside view (reorg reference classes), systems thinking |
| Platform strategy / positioning | Strategy kernel, evolution mapping, scenario thinking | Playing-to-win cascade, portfolio balance, outside view |
| Build-vs-buy / anchor selection | Evolution mapping, outside view, expected-value framing | First principles, reversibility (lock-in is a door classification) |
| Adoption & product decisions | Adoption lifecycle (chasm), second-order effects (what behavior does this incentivize) | Theory of constraints (what gates adoption), outside view, art-of-war positioning |
| Change leadership & transformation | Leading change (Kotter arc), second-order incentive effects | Chesterton's fence, art-of-war positioning (terrain), outside view (transformation base rates) |
| Competitive / stakeholder dynamics (vendors, shadow IT, contested turf) | Art-of-war positioning, evolution mapping | OODA tempo, expected-value framing, bias sweep |
| Planning & allocation | Portfolio balance, outside view vs. delivered actuals, scenario stress | Theory of constraints, expected-value framing |
| Metrics & measurement design | MECE structuring, second-order effects (what a metric incentivizes once gamed) | Outside view (benchmark reference classes) |

**Before selecting, place the problem (Cynefin check, 10 seconds):** *clear* (known playbook — apply it), *complicated* (expert analysis works — this catalog's home turf), *complex* (cause and effect only visible in hindsight — probe with cheap reversible experiments; most platform-adoption questions live here), *chaotic* (stabilize first, analyze after). Most method misuse is treating a complex problem as complicated (over-modeling) or a clear one as complicated (over-thinking).

## The methods

**First-principles decomposition.** Sort constraints into three piles: physical/technical (latency floors, consistency trade-offs, failure-domain math), economic (unit costs, scaling curves, switching costs), organizational/inherited (policy, history, "how we've always done it"). Only the first two are laws; the third is negotiable and must be labeled. Then: designed from scratch at this scale, what would this look like? The gap between that and the proposal is either a real constraint or inertia.

**Outside view / reference-class forecasting.** Before trusting any inside-view estimate, name the reference class — "large-enterprise platform migrations," "internal developer platform rollouts," "vendor consolidations" — and state its base rate honestly (most run long, over budget, or under scope). Justify every claim that *this* effort beats its class with a specific structural difference, not confidence.

**Second-order and systems effects.** For every recommendation ask "and then what?" twice: what behavior does this incentivize once people adapt? Where does risk *migrate* after you squeeze it (rarely destroyed, usually displaced)? What feedback loop does it create or break? Platform work is systems work; a first-order-only analysis is incomplete by construction. The platform-specific instance: **mandates create shadow IT** — a platform that wins by decree rather than by being genuinely easier will be routed around.

**Inversion.** The pre-mortem ("it's 12 months later and this failed — the three most likely reasons"), plus "what would guarantee failure?" checked against the plan for partial versions of exactly those things.

**Causal-chain discipline (diagnosis).** Build the chain from symptom backward, one testable link at a time; for each link, what evidence distinguishes it from the rival explanation? Stop at a cause you can act on. Beware the last-incident narrative.

**Chesterton's fence.** Before removing inherited structure (process, gate, redundancy, team), state what it protected against when erected and whether that hazard is gone, changed, or forgotten.

**Strategy kernel.** A real strategy is: honest *diagnosis* → *guiding policy* → *coherent actions* (resource commitments that reinforce each other). Run the inverse test first: a list of goals ("be the platform of choice") with no theory of how is goals-masquerading-as-strategy — name it and refuse to polish it until a diagnosis and policy exist.

**Playing-to-win cascade.** Winning aspiration → where to play → how to win → capabilities → management systems. The teeth are in where to play: a platform strategy that doesn't name which workloads, domains, and internal customers get "no" (or "later") is a budget allocation, not a strategy. Write the where-NOT down.

**Evolution mapping (Wardley-style).** Place platform components on the evolution axis: genesis → custom-built → product → commodity/utility. Mechanical implications: commoditized components are bought or consumed as utility, never lovingly rebuilt; differentiation is only possible left of product; anything custom-built that the market has productized is inertia wearing an architecture diagram. For build-vs-buy and anchor-selection questions, this map *is* the argument — and it operationalizes the knowledge base's anchor strategy.

**Scenario thinking.** Three genuinely different branches on the 1–2 dominant uncertainties (not "current trends continue" in three costumes). For each: what would we regret not starting today? Bets appearing in all three scenarios are the strategy; the rest are hedges to price.

**Portfolio balance.** Across a large investment envelope, classify bets: core (defend what runs today), adjacent (extend proven capability), transformational (options on a different future — agentic/AI-operated infrastructure being the live example). State current and intended ratios; all-core is slow surrender, all-transformational is gambling with the availability mandate.

**Expected-value framing.** Force rough probabilities × magnitudes rather than best-case narration — including for the status quo. A 20% chance of a severe regulatory finding usually dominates an 80% chance of a modest efficiency gain; make the arithmetic visible.

**MECE structuring.** Decompositions (options, causes, workstreams, metrics) must be mutually exclusive and collectively exhaustive. Overlapping buckets hide double-counted benefits; missing buckets hide the risk nobody owns.

**Theory of constraints.** Throughput is set by the bottleneck; improvement anywhere else is invisible until the bottleneck moves. For platform delivery the constraint is usually a specific team, review gate, or environment; for adoption it's usually onboarding friction or a missing capability, not marketing. Find it, exploit it, subordinate, elevate, re-find.

**Decision reversibility (one-way vs. two-way doors).** Classify before choosing the decision *process*: two-way doors get speed and delegation; one-way doors (anchor/vendor lock-in, public commitments, org designs people plan lives around, anything a regulator will hold) earn the full apparatus. Say the classification out loud.

**Bias sweep (a named pass, not a vibe).** Check for the failure modes of experienced executives: **sunk cost** (would we start this today from zero?), **anchoring** (is the first number said still shaping the range?), **availability** (is the last incident outweighing frequency-weighted risk?), **normalcy** (is a tail risk discounted because it hasn't happened here?), **confirmation** (did we seek evidence against the preferred option as hard as for it?), **authority/consensus** (is anything believed mainly because Parvez or a vendor said it first?). Flag hits explicitly.

**Art-of-war positioning (Sun Tzu, adapted for internal platform reality).** Four disciplines, honestly translated — no deception plays internally, ever: (1) *Win without fighting* — supreme excellence is the battle that never happens: make the platform path so genuinely easier that there is no adoption fight; a mandate battle "won" is usually the war lost to shadow IT. (2) *Know the terrain* — before any contested move, map it: who owns the incumbent tool, whose budget and status the change touches, where the political high ground (exec sponsorship, audit pressure) sits; most platform initiatives fail on terrain they never surveyed. (3) *Avoid strength-on-strength* — don't assault an entrenched, beloved tool head-on; take the undefended ground first (greenfield workloads, new teams, unmet needs) and let the incumbent's position erode as the new default forms. (4) *Timing* — attack when conditions favor you (post-incident appetite for change, budget season, a renewal window), not when your plan happens to be ready. Use for vendor negotiations, competing internal platforms, and any move onto contested turf.

**Leading change (Kotter arc, compressed).** Transformations fail on people, not architecture. The sequence, run as a checklist against any change plan: real **urgency** (a felt business reason, not a slide — if the org doesn't feel the problem, manufacture proof, not pressure) → a **guiding coalition** (the influential believers, mapped by power and interest — not just the willing) → a **vision** statable in a minute → **communication** at 10× the volume that feels sufficient, consistent across forums → **obstacles removed** (the blocking process, the misaligned incentive, the resister with veto power — addressed, not ignored) → **short-term wins** engineered early and made visible (the head-of-platforms quick-win discipline is this step) → **consolidate, don't declare victory** at the first win — that's when regression happens → **anchor in culture** (the new way becomes how promotion, funding, and praise actually work). Diagnostic use: a stalled change is usually stuck at a *specific* step — name it. For individual-level resistance, the ADKAR lens (awareness → desire → knowledge → ability → reinforcement) locates where a *person* is stuck, which is often different from where the org is.

**Adoption lifecycle & the chasm (Moore, for internal platforms).** Internal adopters segment like any market: innovators and early adopters will use the platform because it's new and they see the vision; the early majority — where the adoption targets live — adopt only on references from people like them and only when the *whole product* works (docs, onboarding, support, migration path — not just the API). The chasm is between those groups, and most platform adoption stalls there while the team keeps selling vision to pragmatists who want proof. The play: pick a **beachhead** (one persona/workload segment), make it completely successful, harvest the reference stories (research supplies the evidence; comms tells it), then expand segment by adjacent segment. Never average the segments: a message that excites an innovator alarms a pragmatist.

**OODA tempo (Boyd, brief).** In fast-moving contested situations — an incident, a live negotiation, a competitive vendor dynamic — advantage goes to whoever cycles observe → orient → decide → act faster with *good-enough* orientation, not perfect analysis. Two uses: check your own loop (where does the program's decision cycle stall — usually "orient," waiting for certainty a complex situation won't provide); and in negotiations, recognize when the other side is setting the tempo. Pairs with Cynefin: OODA is the complex/chaotic-domain gait; the full analytical apparatus is the complicated-domain gait — using the wrong gait for the domain is the error.

## Method-conflict rule

When methods disagree: **the outside view wins on estimates** (timelines, costs, success odds); **first principles wins on design** (what to build and how). State which rule you applied when it matters.

## Panel lens assignments (advisor team)

- **first-principles-skeptic:** first-principles decomposition, Chesterton's fence, bias sweep (named pass in round 1).
- **scale-failure-red-team:** second-order/systems effects (where risk migrates), inversion beyond the pre-mortem.
- **platform-adoption-advocate:** adoption lifecycle/chasm (beachhead and whole-product tests), second-order adoption effects, theory of constraints on the funnel, the mandates-create-shadow-IT check.
- **industry-sota-expert:** outside view — reference classes and base rates from public evidence; owns the evolution map's ground truth on strategy issues.
- **delivery-realist:** reference-class check on every timeline and cost estimate.
- **exec-and-regulator-advocate:** expected-value framing — is the risk arithmetic visible and defensible upward.
- **integrator:** selects lead methods by issue type; ensures second-order effects and the pre-mortem appear in every brief; on change and contested-turf issues, runs the Kotter checklist and terrain map respectively.

## Worked micro-examples (the most-used methods, platform-flavored)

*One sanitized instance each, to make the procedure concrete.*

- **First principles:** "We can't offer self-service network provisioning because security must review every change" → sort the piles: segmentation blast-radius math (real), audit-evidence requirement (real, but satisfiable by policy-as-code), "security reviews every ticket" (inherited — the control is the requirement, the ticket queue is a choice). Redesign: guardrails-as-code with automated evidence; the review queue was inertia.
- **Outside view:** Team estimates the container-platform MVP at 2 quarters. Reference class: internal developer platform MVPs at large regulated enterprises — most run 1.5–2× plan and under-scope the docs/onboarding work that drives adoption. Demand the structural difference or plan at 3–4 quarters with 2 as upside.
- **Second-order effects:** Mandating that all new workloads use the platform (first order: adoption jumps). Second order: teams with unmet needs comply on paper and route real work through exemptions and shadow accounts; adoption metric rises while consumption stays flat — the metric now hides the failure. Design for pull; instrument consumption, not just onboarding.
- **Bias sweep:** An anchor renewal leans "keep the incumbent" — sweep finds sunk cost ("three years of IaC modules") and availability (the challenger's public outage last quarter looms large). Re-run as if starting fresh with frequency-weighted reliability data; the lean may survive, but now it's earned.
- **Chasm + art-of-war:** Container-platform adoption stalls at 30% despite happy pilot teams. Diagnosis: the pilot teams were early adopters; the message ("modern, cloud-native, composable") is innovator language aimed at a pragmatist majority who want references and a migration path, and the rollout is assaulting the entrenched VM tooling head-on across every team at once. The play: beachhead one pragmatist segment (new services in one business line), complete the whole product for them (migration guide, office hours, golden paths), harvest the reference story, expand adjacently — and leave the legacy-VM strongholds for last, when the terrain has shifted under them.
- **Kotter diagnostic:** The IPE reorg announcement landed six months ago; structure changed, behavior didn't. Walk the arc: urgency was asserted (a slide), never felt; no guiding coalition — the influential senior engineers were informed, not enlisted. The change is stuck at steps 1–2, so more communication (step 4) is wasted effort until the earlier steps exist. Fix in order.
- **Strategy kernel:** "Be the infrastructure provider of choice" — a goal, not a strategy. Kernel version: diagnosis (product teams bypass I&O because provisioning takes weeks and compliance is manual), guiding policy (make the governed path the fastest path), coherent actions (one MVP domain with embedded policy-as-code, funded by deferring two domains — the where-NOT — with adoption and CES as the proof gates).
