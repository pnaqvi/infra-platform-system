---
name: infra-platform-meeting-prep
description: >
  One-page meeting preparation for the platform program. Use whenever Parvez asks to
  prepare for any meeting or conversation — "prep me for my staff meeting", "I have
  the architecture review board Thursday", "get me ready for the vendor QBR", "prep
  my 1:1 with the CIO", "what should I walk into the steering committee with" — or
  names an upcoming meeting and wants to be ready. Composes from what the system
  already holds: relevant positions and open decisions from memory, commitments owed
  each way from the stakeholders section, cadence status from the workspace, and
  vendor state for vendor-facing meetings. Produces a one-page prep: his goal, his
  asks, what they'll raise, his one-line answers, and the landmines. Composition
  only — new analysis belongs to infra-platform-advisor, evaluations to
  infra-platform-vendor-eval, and send-ready documents to infra-platform-reviews or
  infra-platform-comms.
---

# Infra-Platform Meeting Prep

*Skill version 1.3.0 · Last updated 2026-08-10 · infra-platform-system release 1.3 (2026-08-10)*

Assembles what exists into meeting-ready form. **Core governs** (voice, tenets, depth); the craft here is selection and compression, not new thinking — if the meeting needs analysis that doesn't exist yet, say so and offer the advisor rather than improvising it in a prep.

## Memory & workspace — client of infra-platform-memory

Reads whatever the meeting touches: **stakeholders** (who's in the room, commitments owed each way — primary for 1:1s and exec meetings), **reviews** (commitments due, cadence state), **program-strategy / architecture / platform-products** (positions and open decisions in play), **vendors** (for vendor-facing meetings), plus the workspace: the current period's `plan.md`/`status.md` and any documents on the agenda. Writes back through the memory skill: after the meeting (if he debriefs), new commitments → reviews ledger; stakeholder observations → stakeholders section; both confirmed per T4.

## The prep — one page, always

1. **The meeting in one line** — who, when, what it decides or advances.
2. **Your goal** — the one outcome that makes this meeting a win; the fallback outcome.
3. **Your asks** — 1–3, each priced/sized where the registers allow.
4. **What they'll raise** — predicted from the stakeholders section, open commitments, recent status reds, and known positions of the attendees; each with your **one-line answer** (provenance-tagged where numbers appear).
5. **Landmines** — the questions you don't want unprepped: fired revisit triggers, slipped commitments, contradictions between what's been said and what the registers show. Stated plainly; a landmine hidden from the prep goes off in the room.
6. **Carry-ins** — what you owe them / they owe you from last time (ledger- and stakeholder-derived, never recalled from memory of meetings — T11).

Every claim traces to a register, a workspace document, or `[his-input]`; where the system holds nothing on an attendee or topic, the prep says "no record" rather than inventing color (T2).

## Modes

- **Standing meetings** ("prep my staff meeting"): open from the previous prep for that meeting if filed; carry-forwards first.
- **High-stakes** ("prep me for the risk committee"): offer a murder-board pass — 5–8 hostile questions with his answers, built by a quick panel (core's pattern, lightweight) if he wants adversarial depth.
- **Debrief** ("here's how it went"): capture outcomes — commitments to the ledger, observations to stakeholders, decisions to their sections — via the memory skill, confirmed once.

## Filing

Preps are working papers: file to `workspace/project-plans/meeting-preps/<meeting-slug>/YYYY-MM-DD-prep.md` with a manifest row only when he wants them kept (standing meetings usually yes, one-offs usually no — ask once per meeting series, remember the answer as an insight).

## Guardrails

One page is a ceiling, not a target. No basics, no filler, T12 scrub if the prep will be shared with anyone else. If the registers are empty for this meeting's domain, the honest prep is short — and says which sections would make the next one better.
