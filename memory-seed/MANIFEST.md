# Infra-Platform Memory Manifest
*The routing table. Every section registered here; captures route by scope and keywords.*

| Section | Scope (one line) | Routing keywords | Sync |
|---|---|---|---|
| program-strategy | Vision, charter, roadmap, where-to-play, phase gates | strategy, roadmap, charter, vision, phase, scope | yes |
| architecture | Anchor decisions, reference architectures, standards, build-vs-buy | anchor, architecture, standard, build, buy, design, lock-in | yes |
| platform-products | Per-product state: owners, roadmaps, adoption posture per domain | compute, kubernetes, network, storage, observability, DBaaS, product, catalog | yes |
| org-talent | Team model, roles, skills strategy, hiring/training (org-level only) | team, role, hiring, skills, training, IPE team, owner, architect, engineer | no |
| stakeholders | Exec/partner/customer-team notes and commitments owed each way | stakeholder, CIO, CISO, CFO, sponsor, customer team, commitment | no |
| vendors | Vendor evaluations, claims, renewals, lock-in registers | vendor, contract, renewal, RFP, evaluation, pricing | yes |
| metrics-value | Metric definitions, baselines, targets, trend observations | metric, KPI, adoption, CSAT, NPS, uptime, DORA, cost, baseline | yes |
| reviews | MBR/QBR commitments ledger, carry-forwards, calibration | MBR, QBR, monthly review, quarterly review, commitment | yes |
| exec-writing | How he writes and who he writes for — style patterns and audience notes | memo, one-pager, board, pre-read, style, audience, talking points | yes |
| system | The system's own friction log; feeds maintenance | mis-trigger, friction, skill bug, system note | yes |

Routing notes: `architecture` is *how it's built*; `platform-products` is *what is offered and how it's doing*. A capture touching both stores at its center of gravity with a pointer in the other. `Sync: no` sections stay machine-local — excluded from any remote.
