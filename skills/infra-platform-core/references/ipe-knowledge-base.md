# IPE Knowledge Base — Working Doctrine for the Program

*A synthesis, in the system's own words, of the research corpus Parvez supplied (Gartner infrastructure-platform-engineering research, 2025–2026). Source documents live in `workspace/reference/` for his internal use; per T3, cite titles and synthesize — never reproduce licensed text at length in shareable outputs. Doctrine is a reference class, not a law: advisors argue against it where first principles or evidence disagree.*

## 1. What the program is building

An **infrastructure platform** is an internal software product, not a bundle of services: capabilities (compute, container, network, storage, observability, DBaaS, environments-as-a-service, IAM/SSO) made easily consumable via self-service portals, APIs, and CLIs, with governance, security, compliance, and cost controls **embedded in the platform** rather than enforced through manual gates. Consumers (product teams, developers, data scientists, increasingly AI agents) self-manage within guardrails; the platform organization curates the experience, retains governance, and treats users as customers. The shift is from managing infrastructure *for* consumers to empowering them *within* guardrails — from ticket-driven to product-centric.

The reference architecture pattern (per the program's IPE reference-architecture brief): access layer (portal, catalog, API, custom interfaces) → platform core (components catalog, blueprints/paved roads, landing zones, shared services, sources of truth, artifact registry, everything-as-code: infra/config/pipeline/policy) → orchestration and control loops over cloud, PaaS, SaaS, on-prem, edge, and colocated targets → cross-cutting security/compliance (policy-as-code, secrets, IAM, IaC scanning), observability (telemetry, logging, alerting), cost management, and IPE governance (catalog curation, backlog, docs, support).

## 2. Architecture doctrine: anchor and complement

*(Primary sources: "The Infrastructure You Need for Platform-Centric I&O"; "Maximizing Value From Infrastructure Platform Investments".)*

- **Anchor each platform domain on one primary technology** (ideally exactly one) providing ~80%+ of that platform's intended functionality. Fragmentation across parallel stacks multiplies integration complexity, IaC divergence, and skills spread. Gartner's planning assumption: organizations using an anchoring strategy spend ~30% less on platform technologies through 2028.
- **Complement before you buy:** required functionality not covered by the anchor is first sourced by **reusing capabilities from platforms the organization already runs** (security, application, data/analytics, AI platforms) before any supplemental purchase. Reuse is enforced, not encouraged: capability inventory published, justification required to build or buy new, platform representatives on architecture governance, reference architectures maintained with EA.
- **Right-size engineering:** curate vendor solutions first; custom-build only true differentiators (integrations, governance layers, UX that removes real user pain). Over-customization is the technical-debt trap; a written charter defines what the program builds vs. integrates vs. configures.
- **Manage anchor lock-in deliberately:** identify switching barriers (contracts, skills, ecosystem dependencies, data portability), document the dependency risks, keep a written mitigation strategy, and state in the platform strategy when a platform must accommodate an anchor change. Anchor choices are one-way-door decisions — classify and process them as such.
- **Make existing infrastructure platform-ready** by prioritizing four characteristics in life-cycle plans: **interoperable** (works with systems from other sources), **automatable** (controllable with minimal human intervention), **programmable** (adjustable through software interfaces), **intelligent** (self-optimizing to demand). Assets weak on these limit what the platform can safely do; owners assess and remediate critical gaps.

## 3. Organization doctrine: the IPE team model

*(Primary sources: "How to Develop Infrastructure Platform Engineering Teams"; "Key Actions to Succeed as a Head of Infrastructure Platforms".)*

- Traditional I&O silo structure (network / server / storage / cloud teams, many handoffs) cannot deliver end-to-end platform capabilities. The unit of delivery is the **IPE team**: a dedicated, agile product team accountable as a group for delivery *and* operations of its platform products.
- **Three core roles:** the **platform owner** (product-owner role: strategy and vision, roadmap communication, backlog, customer engagement, demonstrates success through satisfaction/usage/ease/reliability metrics — best filled by someone with software product-management background plus people skills and business acumen); the **platform architect** (connects team to customers, owns architecture and tooling standards, leads strategic planning and roadmaps; may initially be fulfilled by the owner or federated, dedicated as scale demands); **platform engineers** (delivery and operations, applying software-engineering practice — version control, code review, CI/CD, automated testing — to infrastructure automation, self-service, and API access, plus documentation: solution docs, user manuals, runbooks). Teams start small (~3 engineers) with all skills needed, scale by adding teams.
- **Two skill buckets to build:** product management (demand-driven platforms, thinnest viable platform first, evolve on feedback and adoption) and software engineering (APIs, IaC, cloud-native, composable architecture). Skills are hard to hire at market: the strategy combines hiring SWEs with a passion for platform engineering, partnering with external providers for accelerated adoption, partnering with application-development teams, staff augmentation, continual training, and higher-education outreach.
- **Head-of-platforms success pattern:** prepare before the role (stakeholder map, culture read); assess (maturity assessment, listening tour, budget/headcount reality); act (measurable time-bound goals, clarify roles, execute a visible quick win, communicate on a 3/6/12-month arc). Prioritize with the impact-vs-effort grid; avoid both undershooting (no credibility) and overshooting (visible early failure).

## 4. Transformation doctrine: the platform-centric roadmap

*(Primary source: "Strategic Roadmap for Platform-Centric I&O".)*

- Planning assumption: by 2028, ~70% of I&O functions will be expected to operate platform-centric, up from ~25% in 2025. Complement existing capabilities rather than wholesale restructuring — single permanent transformations fail through performance breaks, staff resistance, or net-added complexity; preserving the status quo gets I&O sidelined.
- **Short term — prepare for oversight:** close gaps in managing existing assets/workflows/services; establish an infrastructure platform management policy; incorporate platform measures into performance metrics; require platforms to directly allocate and recover costs from consuming products.
- **Medium term — practices and tools:** agile delivery models, platform-management toolsets, observability platforms; assigned decision rights (RACI); agile sourcing for platform selection; systems of record giving a coherent view from business capability down to infrastructure.
- **Long term — systems and environments:** anchor-and-complement development model; distinct platform team structures free to organize per digital-product needs; reconfigurable collaborative workspaces.
- The line that governs the whole program: **platforms cannot rely on mandates — they must outperform alternatives in ways that matter to their customers.** Every adoption decision is tested against this.

## 5. Value doctrine: reuse, experience, and the traps

*(Primary source: "Maximizing Value From Infrastructure Platform Investments".)*

- The ROI drivers: right-sized engineering, anchored domains, enforced reuse (lower TCO, lower cognitive load, network effects).
- **Ownership:** one accountable platform owner per platform; cross-functional squads (architect, automation engineer, software engineer, product manager, operations); co-invest with Finance (FinOps), Security (CISO), Data (CDAO), AI (CAIO) so platforms are funded as strategic shared investments, not siloed I&O costs.
- **Developer experience is the product:** measure CES/CSAT/NPS; make self-service genuinely invisible (docs, API/CLI/UI parity, guided onboarding, tool integration); an internal developer platform layer shields teams from cloud and policy complexity.
- **Named traps:** *policy fragmentation* (disparate policy tools across domains → build a policy-orchestration layer, inventory policies, hunt contradictions); *over-engineering* (retire low-usage features ruthlessly, 80/20, route niche needs to self-service); *disconnect from business outcomes* (always link adoption to deployment speed, cost, compliance — tell the value story in business terms).

## 6. Measurement doctrine: the four pillars

*(Primary source: "Measuring Infrastructure Platform Engineering Success". Targets are directional industry benchmarks — the program sets its own; directional improvement matters more than static targets.)*

| Pillar | Core metrics | Cadence | Directional targets |
|---|---|---|---|
| **Experience** | CES (effort/friction), CSAT (1–5 post-change), NPS | CES continuous · CSAT after major changes · NPS quarterly | CSAT ≥ 4/5 · NPS ≥ 50 |
| **Adoption & engagement** | Adoption rate (onboarded/eligible), consumption rate (active/onboarded), API consumption, feature utilization & abandonment | Monthly; API quarterly | ~60%+ adoption in 6 months, ~80%+ in 12 |
| **Operations** | Uptime/SLA, provisioning speed vs. baseline, MTTD, MTTR, DORA set | Monthly (DORA monthly/quarterly) | Uptime at or above the program's regulated SLA; MTTR trending down |
| **Business outcomes** | Self-service rate, technical-debt reduction vs. baseline, cost per workload / chargeback / budget variance, value-enhancement linkage to KPIs, compliance-audit readiness | Monthly–quarterly | Self-service ≥ ~70% of routine tasks |

- **Ownership:** every metric category has a named owner; Finance owns cost metrics, Security owns risk/compliance KPIs; regulated-industry reporting aligns with audit requirements.
- **Dashboard discipline:** one integrated view linking sentiment and outcomes, tuned per audience (platform team & product leadership → experience; head of I&O & CFO → adoption; CTO, DevOps, business units → operations/business). Start with 4–5 essential metrics (adoption, CSAT, uptime, one business metric), assign owners immediately, report within 30 days, add depth gradually. Read metrics **jointly**: low CES + high adoption means users are using but struggling — fix the experience, don't celebrate the adoption.

## 7. Phase model for the program

*(Primary source: the "Infrastructure as a Platform" briefing deck; timings are the reference class, not commitments.)*

1. **Strategy & assessment (~1–2 months):** anchor definitions per domain; maturity assessment (agility, observability, IaC); user pain-point interviews across cloud-native, data-science, and business teams.
2. **Team & governance (~2–4 months):** dedicated IPE team(s) formed with full-time roles; hire/upskill on IaC, CI/CD, API, cloud-native; governance principles codified into automated policy.
3. **MVP (~4–6 months):** one high-value use case (e.g., cloud-account vending, Kubernetes); build iteratively, release early, measure adoption / time-to-provision / satisfaction.
4. **Scale & optimize (6+ months):** expand domains; enforce reuse; embed cost governance and chargeback at every layer.
- Opening moves: secure executive alignment (this is an organizational shift, not a technical one) and run a rapid listening tour (cloud architects, security, finance, product teams) to validate anchor choices and the MVP use case.
- A 90-day validation play: weeks 1–2 audit platforms and integration complexity and identify anchors; 3–4 map the reuse landscape and duplication; 5–6 assign owners and define just-enough engineering scope; 7–8 co-design the minimum viable platform experience for one high-value persona; 9–12 pilot and measure CES, adoption, provisioning time.

## 8. Success picture

Provisioning in hours not weeks; teams adopt the platform because it is easier than alternatives; chargeback and observability expose waste and automation reduces it; policy-as-code lowers audit risk; platform engineers solve strategic problems instead of fielding tickets; and I&O is the infrastructure provider of choice — outperforming, not mandating.
