# Templates — Memory Sections & Workspace Manifest

## Memory MANIFEST.md

```markdown
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
```

Routing notes: `architecture` is *how it's built*; `platform-products` is *what is offered and how it's doing*. A capture touching both stores at its center of gravity with a pointer in the other. `Sync: no` sections stay machine-local.

## positions.md

```markdown
# <Section> — Positions

## <Topic>
- **Position:** <one-sentence stance>
- **Confidence:** high / medium / low
- **Basis:** <why — evidence, experience, first-principles argument>
- **Would change my mind:** <the observable thing>
- **Last updated:** <date> (<what prompted it>)
```

A position without a would-change-my-mind line is a dogma, not a position — the field is mandatory.

## decisions-ledger.md

```markdown
# <Section> — Decisions Ledger

| Date | Decision | Chosen option | Confidence | Revisit triggers | Status | Source | Outcome & calibration note |
|---|---|---|---|---|---|---|---|

## Calibration summary
*(updated at each review; no pattern claims under ~10 closed decisions per confidence band — directional language only)*
```

## insights.md

```markdown
# <Section> — Insights

## YYYY-MM-DD — <slug>
<short entry — the observation, pattern, or lesson>
*Source: <session / meeting / event>*
```

Insights are the holding pen: review promotes matured ones to positions and rolls stale ones (>~6 months) into `archive/insights-YYYY.md`.

## Workspace MANIFEST.md

```markdown
# Infra-Platform Workspace Manifest
*Every filed document gets a row. A document not registered here is lost to future sessions.*

Folders: reference/ (research & source library — every file indexed in reference/INDEX.md; licensed material internal-only, T3) · strategy/ · tech-plans/ · project-plans/ · cadence/monthly/YYYY-MM/ (plan.md · status.md · mbr.* · metrics-snapshot.md) · cadence/quarterly/YYYY-QN/ (plan.md · status.md · qbr.*) · archive/

| Date | Path | Type | Description (one line) | Status | Source |
|---|---|---|---|---|---|
```

Status values: `draft` · `final` · `superseded → <path of successor>`. Naming: `YYYY-MM-DD-<kebab-slug>.<ext>`.


## reference/INDEX.md

```markdown
# Reference Library Index
*One row per file. `internal-only` = licensed material: cite titles and synthesize in shareable outputs, never reproduce at length (T3).*

| File | What it is (one line) | Origin | Date added | License posture |
|---|---|---|---|---|
```


## program-context.md (program-strategy section — the fact-sheet)

```markdown
# Program Context — What IS
*Facts, not beliefs (positions hold those). Read first by every skill. Refresh at maintenance; confirm quarterly.*
*Last confirmed: YYYY-MM-DD*

- **Phase:** <strategy / team & governance / MVP / scale — with one line of where exactly>
- **Active platform products:** <product — owner — state (design/MVP/GA) — one-line adoption posture>, …
- **Org shape:** <teams stood up, headline numbers he's stated — org-level only>
- **Anchors decided:** <domain → anchor>, … · **Open anchor decisions:** …
- **This quarter's commitments:** <top 3–5, from the reviews ledger>
- **Top constraints:** <the 2–3 that shape everything right now>
- **Standing context:** <anything else he wants every session to know>
```
All entries [his-input] or ledger-derived; `[X]` where unknown. Never inferred.

## risk-register.md (workspace project-plans/ — the standing register)

```markdown
# Program Risk Register
*The single source for program risks (T10). Reviews read this — risks are never re-typed into an MBR. Update on change; age at maintenance.*

| ID | Risk (one line) | Category | Likelihood | Impact | Owner | Mitigation | Status | Opened | Last reviewed |
|---|---|---|---|---|---|---|---|---|---|
```
Status: open / mitigating / accepted / closed-<date>. A risk unreviewed for >90 days is flagged at pulse and maintenance. Material changes are also ledger-worthy (capture offer).
