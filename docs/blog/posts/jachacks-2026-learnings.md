---
date: 2026-08-27                # placeholder; auto-publisher will overwrite when post goes live
authors:
  - jaseci-team
categories:
  - Community
slug: jachacks-2026-learnings
draft: true
---

# We Threw 1,000 Hackers at Jac. Here's What Broke and What Stuck.

<p class="lead" markdown="1">Three hackathons. 1,000 hackers. One year. We surveyed participants after every JacHacks of 2026 and read every word, including the brutal ones. The numbers say something we did not expect: for a new language in 2026, **agent-compatibility *is* developer experience**. Nobody learns a language from a tutorial anymore. Their coding agent learns it first.</p>

<!-- more -->

<div class="stat-grid" markdown="1">
<div class="stat-card" markdown="1"><span class="stat-num">1,000</span><span class="stat-label">hackers across three events in one year</span></div>
<div class="stat-card" markdown="1"><span class="stat-num">77%</span><span class="stat-label">rated Jac easy to get started, up from 24% at the first event</span></div>
<div class="stat-card" markdown="1"><span class="stat-num">73.1%</span><span class="stat-label">of SF teams built with a coding agent plus the Jac MCP / SKILL.md files</span></div>
<div class="stat-card" markdown="1"><span class="stat-num">69%</span><span class="stat-label">felt more productive than in their usual stack, on day one</span></div>
<div class="stat-card" markdown="1"><span class="stat-num">85%</span><span class="stat-label">named "one language for full stack" the best part, up from 56%</span></div>
<div class="stat-card" markdown="1"><span class="stat-num">4.38/5</span><span class="stat-label">overall rating for JacHacks SF, up from 3.47</span></div>
</div>

We ran our first in-person JacHacks in Ann Arbor in the spring semester, followed with a five-day online edition (JacHacks Spring), and closed with JacHacks SF at Founders Inc in July, which alone drew 450+ registrants. After each one we surveyed participants, collecting 34, 12, and 26 responses respectively.

We build in public, so here's what the data actually says: where we got better, where we're still weak, and the one shift that changed how we think about Jac adoption entirely.

## Brand-new users beat their own stacks on day one

Every event, we asked "How easy was it to get started with Jac?" (1–5) and "Compared to your usual stack, how productive did you feel?" (1–5). Roughly 80–90% of participants at every event were brand new to Jac, so this is a clean read on first-contact experience.

<figure>
<svg viewBox="0 0 680 244" width="100%" style="display: block;" role="img" aria-label="Grouped column chart across three events. Rated getting started 4 or 5: 24% at JacHacks 2026 in Ann Arbor, 67% at JacHacks Spring online, 77% at JacHacks SF. Rated more productive than their usual stack: 32%, 67%, and 69% at the same events.">
  <title>First-contact experience improved event over event</title>
  <g font-size="12.5" fill="currentColor">
    <rect x="40" y="8" width="12" height="12" rx="2" fill="#e8622c"/>
    <text x="58" y="18">"Easy to get started" (rated 4–5)</text>
    <rect x="320" y="8" width="12" height="12" rx="2" fill="#2a78d6"/>
    <text x="338" y="18">"More productive than my usual stack" (rated 4–5)</text>
  </g>
  <g fill="#e8622c">
    <path d="M113,196 v-32 a4,4 0 0 1 4,-4 h26 a4,4 0 0 1 4,4 v32 z"/>
    <path d="M333,196 v-96 a4,4 0 0 1 4,-4 h26 a4,4 0 0 1 4,4 v96 z"/>
    <path d="M553,196 v-112 a4,4 0 0 1 4,-4 h26 a4,4 0 0 1 4,4 v112 z"/>
  </g>
  <g fill="#2a78d6">
    <path d="M153,196 v-44 a4,4 0 0 1 4,-4 h26 a4,4 0 0 1 4,4 v44 z"/>
    <path d="M373,196 v-96 a4,4 0 0 1 4,-4 h26 a4,4 0 0 1 4,4 v96 z"/>
    <path d="M593,196 v-100 a4,4 0 0 1 4,-4 h26 a4,4 0 0 1 4,4 v100 z"/>
  </g>
  <g font-size="13" font-weight="600" fill="currentColor" text-anchor="middle">
    <text x="130" y="152">24%</text>
    <text x="170" y="140">32%</text>
    <text x="350" y="88">67%</text>
    <text x="390" y="88">67%</text>
    <text x="570" y="72">77%</text>
    <text x="610" y="84">69%</text>
  </g>
  <line x1="40" y1="196.5" x2="660" y2="196.5" stroke="currentColor" stroke-opacity="0.3" stroke-width="1"/>
  <g font-size="12.5" fill="currentColor" opacity="0.65" text-anchor="middle">
    <text x="150" y="216">JacHacks 2026</text>
    <text x="370" y="216">JacHacks Spring</text>
    <text x="590" y="216">JacHacks SF</text>
  </g>
  <g font-size="11.5" fill="currentColor" opacity="0.5" text-anchor="middle">
    <text x="150" y="233">(Ann Arbor)</text>
    <text x="370" y="233">(Online)</text>
    <text x="590" y="233">(Founders Inc)</text>
  </g>
</svg>
<figcaption><strong>First-contact experience improved event over event.</strong> Post-event surveys: 34, 12, and 26 respondents respectively. Percentages are respondents rating 4 or 5 on a 1–5 scale.</figcaption>
</figure>

At the first event, only 23.5% rated getting started a 4 or 5, and 35.3% rated their productivity a 1 or 2. Only one person gave productivity a 5. By SF, 76.9% rated getting started a 4 or 5, and 69.2% said they felt *more* productive than in their usual stack. That's brand-new users, on day one, reporting a productivity win over stacks they've used for years.

Intent to continue followed the same curve. At the first event, "how likely are you to continue using Jac?" was bimodal, with a real cluster at 1 alongside the enthusiasts. By SF, the distribution had shifted right (mode at 8, nobody below meaningful interest until a thin tail), and 88.5% said yes or maybe to joining the community.

The first event's survey was rough to read. The improvement since then wasn't luck. It came from fixing specific things people told us were broken.

## Nobody learns your language anymore. Their agent does.

At our first hackathon, the dominant complaint was some version of:

> "Claude did not know most Jac syntax."

Participants fought their AI assistants all weekend. IDE errors were wrong, agents hallucinated syntax, and one team of non-technical builders dropped out entirely because their vibe-coding workflow just didn't work with an unfamiliar language.

We took that seriously and invested in the Jac MCP server and SKILL.md files so coding agents could get accurate, current context.

By SF, **73.1% of teams built with a coding agent (Claude Code, Codex, etc.) plus the Jac MCP / SKILL.md files**. It was the single dominant workflow.

<figure>
<svg viewBox="0 0 680 164" width="100%" style="display: block;" role="img" aria-label="Horizontal bar chart of how teams built at JacHacks SF: coding agent plus the Jac MCP server and SKILL.md files 73.1%, only JacHammer 11.5%, started on JacHammer then moved to local 11.5%, JacHammer plus Claude combo 3.8%.">
  <title>How teams built at JacHacks SF</title>
  <g font-size="13" fill="currentColor" text-anchor="end">
    <text x="245" y="19">Coding agent (Claude Code / Codex)<tspan x="245" dy="15">+ Jac MCP / SKILL.md</tspan></text>
    <text x="245" y="65">Only JacHammer</text>
    <text x="245" y="105">Started on JacHammer, went local</text>
    <text x="245" y="145">JacHammer + Claude combo</text>
  </g>
  <path d="M260,10 h288 a4,4 0 0 1 4,4 v14 a4,4 0 0 1 -4,4 h-288 z" fill="#e8622c"/>
  <g fill="currentColor" opacity="0.35">
    <path d="M260,50 h42 a4,4 0 0 1 4,4 v14 a4,4 0 0 1 -4,4 h-42 z"/>
    <path d="M260,90 h42 a4,4 0 0 1 4,4 v14 a4,4 0 0 1 -4,4 h-42 z"/>
    <path d="M260,130 h11 a4,4 0 0 1 4,4 v14 a4,4 0 0 1 -4,4 h-11 z"/>
  </g>
  <g font-size="13" font-weight="600" fill="currentColor">
    <text x="560" y="25">73.1%</text>
    <text x="314" y="65">11.5%</text>
    <text x="314" y="105">11.5%</text>
    <text x="283" y="145">3.8%</text>
  </g>
  <line x1="259.5" y1="6" x2="259.5" y2="156" stroke="currentColor" stroke-opacity="0.3" stroke-width="1"/>
</svg>
<figcaption><strong>The agent path is the front door.</strong> JacHacks SF post-event survey: "How did you build your project?" (26 respondents)</figcaption>
</figure>

And the tone of the feedback flipped. Two SF participants, unprompted:

> "It was really seamless, the agent understood the language and architecture much easily and wrote better more streamlined code overall."
>
> "Quite easy. Codex picked it up well."

Here's the paradox worth sitting with: **learning a new language is getting *easier*, because nobody is learning it. Their agents are.** Look back at the first chart: getting-started scores went from 24% to 77% in one year. Jac's syntax didn't get three times simpler in that time. What changed is that the agent's grasp of Jac got three times better: MCP server, SKILL.md files, fresher docs. The human onboarding curve and the agent onboarding curve are now the same curve.

That's the core thesis confirmed: for a new language in 2026, agent-compatibility *is* developer experience. People don't learn a language from a tutorial anymore. Their agent learns it first, and they judge the language by how well that goes.

!!! note "The moat moved"
    The decades-old moat around new languages, "nobody wants to learn another syntax," is draining fast. What replaces it is a different moat: how well your language works when an agent writes it. That's a competition Jac was designed to win.

It also means the failure modes are unforgiving. The sharpest SF criticism was about exactly this surface: stale docs that didn't match the compiler, and an MCP server that worked on one teammate's setup but not another's. When the agent path breaks, it breaks the whole experience. Which brings us to the next finding.

## We fixed the language. The friction climbed the stack.

Tracking "which areas need the most improvement" across the three events tells a story:

<figure>
<svg viewBox="0 0 680 254" width="100%" style="display: block;" role="img" aria-label="Grouped column chart of improvement areas across three events. Documentation and examples: 38%, 58%, 15%. CLI and errors: 38%, 42%, 23%. Builder platform, meaning Jac Builder then JacHammer: 50%, 17%, 50%. MCP server and SKILL.md: 15%, 25%, 27%.">
  <title>Friction moved up the stack: which areas need the most improvement?</title>
  <g font-size="12.5" fill="currentColor">
    <rect x="40" y="6" width="12" height="12" rx="2" fill="#2a78d6"/>
    <text x="58" y="16">Documentation &amp; examples</text>
    <rect x="352" y="6" width="12" height="12" rx="2" fill="#e8622c"/>
    <text x="370" y="16">CLI / errors</text>
    <rect x="40" y="26" width="12" height="12" rx="2" fill="#1baf7a"/>
    <text x="58" y="36">Builder platform (Jac Builder / JacHammer)</text>
    <rect x="352" y="26" width="12" height="12" rx="2" fill="#c98500"/>
    <text x="370" y="36">MCP server / SKILL.md</text>
  </g>
  <g fill="#2a78d6">
    <path d="M89,210 v-87 a4,4 0 0 1 4,-4 h18 a4,4 0 0 1 4,4 v87 z"/>
    <path d="M309,210 v-135 a4,4 0 0 1 4,-4 h18 a4,4 0 0 1 4,4 v135 z"/>
    <path d="M529,210 v-32 a4,4 0 0 1 4,-4 h18 a4,4 0 0 1 4,4 v32 z"/>
  </g>
  <g fill="#e8622c">
    <path d="M121,210 v-87 a4,4 0 0 1 4,-4 h18 a4,4 0 0 1 4,4 v87 z"/>
    <path d="M341,210 v-97 a4,4 0 0 1 4,-4 h18 a4,4 0 0 1 4,4 v97 z"/>
    <path d="M561,210 v-51 a4,4 0 0 1 4,-4 h18 a4,4 0 0 1 4,4 v51 z"/>
  </g>
  <g fill="#1baf7a">
    <path d="M153,210 v-116 a4,4 0 0 1 4,-4 h18 a4,4 0 0 1 4,4 v116 z"/>
    <path d="M373,210 v-37 a4,4 0 0 1 4,-4 h18 a4,4 0 0 1 4,4 v37 z"/>
    <path d="M593,210 v-116 a4,4 0 0 1 4,-4 h18 a4,4 0 0 1 4,4 v116 z"/>
  </g>
  <g fill="#c98500">
    <path d="M185,210 v-32 a4,4 0 0 1 4,-4 h18 a4,4 0 0 1 4,4 v32 z"/>
    <path d="M405,210 v-56 a4,4 0 0 1 4,-4 h18 a4,4 0 0 1 4,4 v56 z"/>
    <path d="M625,210 v-61 a4,4 0 0 1 4,-4 h18 a4,4 0 0 1 4,4 v61 z"/>
  </g>
  <g font-size="12" font-weight="600" fill="currentColor" text-anchor="middle">
    <text x="102" y="113">38%</text>
    <text x="134" y="113">38%</text>
    <text x="166" y="84">50%</text>
    <text x="198" y="168">15%</text>
    <text x="322" y="65">58%</text>
    <text x="354" y="103">42%</text>
    <text x="386" y="163">17%</text>
    <text x="418" y="144">25%</text>
    <text x="542" y="168">15%</text>
    <text x="574" y="149">23%</text>
    <text x="606" y="84">50%</text>
    <text x="638" y="139">27%</text>
  </g>
  <line x1="40" y1="210.5" x2="660" y2="210.5" stroke="currentColor" stroke-opacity="0.3" stroke-width="1"/>
  <g font-size="12.5" fill="currentColor" opacity="0.65" text-anchor="middle">
    <text x="150" y="230">JacHacks 2026</text>
    <text x="370" y="230">JacHacks Spring</text>
    <text x="590" y="230">JacHacks SF</text>
  </g>
  <g font-size="11.5" fill="currentColor" opacity="0.5" text-anchor="middle">
    <text x="150" y="247">(Ann Arbor)</text>
    <text x="370" y="247">(Online)</text>
    <text x="590" y="247">(Founders Inc)</text>
  </g>
</svg>
<figcaption><strong>Friction moved up the stack.</strong> Post-event surveys: "Which areas need the most improvement?" Multiple selections allowed.</figcaption>
</figure>

- **Event 1:** Jac Builder (50%), CLI/errors (38.2%), documentation (38.2%). The core tooling and error messages were the wall.
- **Spring:** Documentation & examples (58.3%), CLI/errors (41.7%). Tooling complaints dropped; the ask shifted to more worked examples and beginner onboarding.
- **SF:** JacHammer (50%), MCP/SKILL.md (26.9%). Language-level friction largely faded: documentation complaints fell to 15.4%, and 38.5% said "everything was great." The pain concentrated in the hosted platform: build speed, credit consumption, deployment reliability, environment variables.

That progression is what we'd hope to see, since each layer of the stack getting fixed exposes the next one. But it also sets our current priority list unambiguously.

!!! note "What we're fixing next"
    - **JacHammer performance and reliability.** Build speed, credit consumption, deployment.
    - **MCP robustness across environments.** It cannot work on one teammate's setup and not another's.
    - **Docs in lockstep with compiler releases.** Stale docs break the agent path, and the agent path is the product.
    - **Windows.** Multiple events, same complaint. We hear it.

## One language ate the stack: 56% → 67% → 85%

Asked what the best part of the stack was, "one language for full-stack development" won every time, and its margin *grew*: 55.9% → 66.7% → **84.6%** at SF. Graph-based programming (OSP) and byLLM round out the top three at every event.

<figure>
<svg viewBox="0 0 680 246" width="100%" style="display: block;" role="img" aria-label="Grouped column chart of the favorite parts of the Jac stack across three events. One language for the full stack: 56%, 67%, 85%. Graph-based programming, OSP: 47%, 75%, 54%. byLLM for AI: 47%, 50%, 46%.">
  <title>Best part of the Jac stack: one language keeps pulling ahead</title>
  <g font-size="12.5" fill="currentColor">
    <rect x="40" y="8" width="12" height="12" rx="2" fill="#e8622c"/>
    <text x="58" y="18">One language for full stack</text>
    <rect x="255" y="8" width="12" height="12" rx="2" fill="#2a78d6"/>
    <text x="273" y="18">Graph-based programming (OSP)</text>
    <rect x="505" y="8" width="12" height="12" rx="2" fill="#1baf7a"/>
    <text x="523" y="18">byLLM for AI</text>
  </g>
  <g fill="#e8622c">
    <path d="M99,200 v-80 a4,4 0 0 1 4,-4 h22 a4,4 0 0 1 4,4 v80 z"/>
    <path d="M319,200 v-96 a4,4 0 0 1 4,-4 h22 a4,4 0 0 1 4,4 v96 z"/>
    <path d="M539,200 v-124 a4,4 0 0 1 4,-4 h22 a4,4 0 0 1 4,4 v124 z"/>
  </g>
  <g fill="#2a78d6">
    <path d="M135,200 v-66 a4,4 0 0 1 4,-4 h22 a4,4 0 0 1 4,4 v66 z"/>
    <path d="M355,200 v-108 a4,4 0 0 1 4,-4 h22 a4,4 0 0 1 4,4 v108 z"/>
    <path d="M575,200 v-77 a4,4 0 0 1 4,-4 h22 a4,4 0 0 1 4,4 v77 z"/>
  </g>
  <g fill="#1baf7a">
    <path d="M171,200 v-66 a4,4 0 0 1 4,-4 h22 a4,4 0 0 1 4,4 v66 z"/>
    <path d="M391,200 v-71 a4,4 0 0 1 4,-4 h22 a4,4 0 0 1 4,4 v71 z"/>
    <path d="M611,200 v-65 a4,4 0 0 1 4,-4 h22 a4,4 0 0 1 4,4 v65 z"/>
  </g>
  <g font-size="12.5" font-weight="600" fill="currentColor" text-anchor="middle">
    <text x="114" y="108">56%</text>
    <text x="150" y="122">47%</text>
    <text x="186" y="122">47%</text>
    <text x="334" y="92">67%</text>
    <text x="370" y="80">75%</text>
    <text x="406" y="117">50%</text>
    <text x="554" y="64">85%</text>
    <text x="590" y="111">54%</text>
    <text x="626" y="123">46%</text>
  </g>
  <line x1="40" y1="200.5" x2="660" y2="200.5" stroke="currentColor" stroke-opacity="0.3" stroke-width="1"/>
  <g font-size="12.5" fill="currentColor" opacity="0.65" text-anchor="middle">
    <text x="150" y="220">JacHacks 2026</text>
    <text x="370" y="220">JacHacks Spring</text>
    <text x="590" y="220">JacHacks SF</text>
  </g>
  <g font-size="11.5" fill="currentColor" opacity="0.5" text-anchor="middle">
    <text x="150" y="237">(Ann Arbor)</text>
    <text x="370" y="237">(Online)</text>
    <text x="590" y="237">(Founders Inc)</text>
  </g>
</svg>
<figcaption><strong>"One language" keeps pulling ahead.</strong> Post-event surveys: "Which is the best part of the Jac stack?" Multiple selections allowed.</figcaption>
</figure>

The free-text responses put it plainly:

> "I liked how I could do everything in one language and didn't have to move between frameworks."
>
> "The one language end to end development... made it really easy to build and change ideas with the AI understanding everything it was doing from the start."

That second quote is worth sitting with, because it ties the two threads together. The single-language design isn't just ergonomic for humans; it's what lets an agent hold the whole system in its head. That's the polyglot-tax argument, stated unprompted by a hackathon participant.

## The part where we got roasted (and deserved it)

The technology curve went up. The event-ops curve was bumpier.

Our first hackathon drew real criticism on logistics: inconsistent judging times, last-minute submission changes, food running out, communication gaps between Discord and in-person announcements. One respondent, a hackathon organizer themselves, itemized it all. We deserved it, and we restructured accordingly.

<figure>
<svg viewBox="0 0 680 212" width="100%" style="display: block;" role="img" aria-label="Two column charts. Overall event rating out of 5: 3.47 at JacHacks 2026 in Ann Arbor, 4.42 at JacHacks Spring online, 4.38 at JacHacks SF. Respondents saying there was nothing to improve: 15%, 17%, 38% at the same events.">
  <title>Overall event quality across three events</title>
  <g font-size="13" font-weight="600" fill="currentColor" text-anchor="middle">
    <text x="180" y="16">Overall event rating (out of 5)</text>
    <text x="530" y="16">"Nothing to improve" responses</text>
  </g>
  <g fill="#e8622c">
    <path d="M70,180 v-93 a4,4 0 0 1 4,-4 h32 a4,4 0 0 1 4,4 v93 z"/>
    <path d="M160,180 v-120 a4,4 0 0 1 4,-4 h32 a4,4 0 0 1 4,4 v120 z"/>
    <path d="M250,180 v-119 a4,4 0 0 1 4,-4 h32 a4,4 0 0 1 4,4 v119 z"/>
    <path d="M430,180 v-41 a4,4 0 0 1 4,-4 h32 a4,4 0 0 1 4,4 v41 z"/>
    <path d="M510,180 v-47 a4,4 0 0 1 4,-4 h32 a4,4 0 0 1 4,4 v47 z"/>
    <path d="M590,180 v-110 a4,4 0 0 1 4,-4 h32 a4,4 0 0 1 4,4 v110 z"/>
  </g>
  <g font-size="13" font-weight="600" fill="currentColor" text-anchor="middle">
    <text x="90" y="75">3.47</text>
    <text x="180" y="48">4.42</text>
    <text x="270" y="49">4.38</text>
    <text x="450" y="127">15%</text>
    <text x="530" y="121">17%</text>
    <text x="610" y="58">38%</text>
  </g>
  <line x1="50" y1="180.5" x2="310" y2="180.5" stroke="currentColor" stroke-opacity="0.3" stroke-width="1"/>
  <line x1="410" y1="180.5" x2="650" y2="180.5" stroke="currentColor" stroke-opacity="0.3" stroke-width="1"/>
  <g font-size="12" fill="currentColor" opacity="0.65" text-anchor="middle">
    <text x="90" y="200">Ann Arbor</text>
    <text x="180" y="200">Online</text>
    <text x="270" y="200">SF</text>
    <text x="450" y="200">Ann Arbor</text>
    <text x="530" y="200">Online</text>
    <text x="610" y="200">SF</text>
  </g>
</svg>
<figcaption><strong>Overall event quality across three events.</strong> Post-event surveys: overall event rating (1–5), and the share of respondents who said there was nothing to improve in the stack.</figcaption>
</figure>

SF ran much tighter: the event rating hit 4.38/5 (vs. 3.47 at the first event), 38.5% of SF respondents said there was *nothing* to improve in the stack (up from 14.7%), and the qualitative feedback praised the organization. But we made a new mistake in the opposite direction: we underestimated demand. 450+ registrants in a space that got cramped fast, judging that ran past schedule, and coffee logistics that failed the 8am start. The Spring online edition scored 4.42 with essentially zero logistics complaints, which tells us the online format has real strengths, though participants there told us they'd still rather meet in person.

!!! note "Changes for round four"
    - **A bigger venue.** We planned for the room we had, not the crowd we drew.
    - **Judging capacity planned against registration**, not attendance guesses.
    - **Allergen-labeled food**, and enough of it.
    - **Sponsor-provided LLM and agent credits**, so beginners who show up without a Claude or Codex subscription aren't building with one hand tied.

## Round four

Three events, a thousand hackers, one year, and a clear picture: the "one language" value proposition lands harder every time we test it, agents are the front door to adoption, and our job now is making the agent path and the hosted platform bulletproof.

If you built something at any of these events, thank you, including (especially) those of you who told us exactly what was broken. The community lives on our Discord, weekly meetups, and the biweekly Jaseci Digest.

See you at the next one. We're booking a bigger room.

---

<div class="citation" markdown="1">
Figures throughout are drawn from the three JacHacks post-event surveys of 2026: JacHacks 2026 (Ann Arbor, 34 responses), JacHacks Spring (online, 12 responses), and JacHacks SF (Founders Inc, 26 responses). Multi-select questions allow responses to total more than 100%.
</div>

<div class="cta cta-rich" markdown="1">
**Want to build the way 73% of our SF teams did?** Point your coding agent at the Jac MCP server and SKILL.md files, and build the backend, frontend, and AI in a single language.

[Star Jac on GitHub](https://github.com/jaseci-labs/jaseci){ .cta-button }
</div>
