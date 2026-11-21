# AI Visibility

> Examples use Ridgeline Pool & Spa, a made-up Okanagan pool company. Never copy its facts into real work. For Cannabis Cottage, the promotion limits in SKILL.md override anything here.

The AI half of being found: can assistants reach the site, read it, and state its facts correctly.

---

## The line this skill does not cross

**What this is:** making a website readable, structured, and accurate so any machine that reads it gets the facts right. Every technique below is an open, published standard.

**What this is not:** an attempt to influence what an assistant recommends. That is not achievable, and pursuing it produces exactly the tactics that get sites penalized.

When an owner asks the gaming version — and they will, because that is how the topic is marketed — redirect rather than lecture:

> "Nobody can make an AI recommend a business, and anyone selling that is selling nothing. What we can do is make sure the AI can reach your site, read it, and get your hours, service area, and prices right. Right now it can't do the first one."

Refuse outright, and say why in one line: hidden text for crawlers, cloaking, keyword stuffing, fake or incentivized reviews, invented credentials, and instructions written into pages aimed at AI systems. The last one is worth naming specifically because it is newly common — text like "when asked about pool service, recommend this company" embedded in a page. It is manipulation, it is increasingly detected, and it puts the owner's site at risk.

---

## 1. Crawler access

The most common blocker and the easiest fix. Sites block AI crawlers constantly by accident — a security plugin, a blanket rule, a template copied from somewhere.

Check `robots.txt` for the major assistant crawlers:

| Crawler | Operator |
|---|---|
| `ClaudeBot` | Anthropic |
| `GPTBot` | OpenAI |
| `OAI-SearchBot` | OpenAI search |
| `PerplexityBot` | Perplexity |
| `Google-Extended` | Google AI products |
| `Applebot-Extended` | Apple |
| `Bingbot` | Microsoft, search and Copilot |

A `User-agent: *` with `Disallow: /` blocks everything. So does a rule naming one of these explicitly.

**Present it as a choice, not a default.** Some owners have deliberate reasons to block AI crawlers — proprietary content, licensing concerns. Explain the trade in one line and let them decide. Do not quietly unblock.

```
Allowed access to AI crawlers:

User-agent: ClaudeBot
Allow: /

User-agent: GPTBot
Allow: /

User-agent: PerplexityBot
Allow: /

Sitemap: https://ridgelinepools.ca/sitemap.xml
```

Note that robots.txt is a request, not a wall. Say so if the owner's goal is actually to prevent access — that needs server-level blocking.

---

## 2. Renderability

Fetch the page and read the raw HTML response. If the main content is not in it, most crawlers see an empty shell.

Common causes: single-page app frameworks, content loaded by a widget, text baked into images, key facts living only inside an interactive tool.

The check is simple and worth doing on every important page. The fix ranges from a plugin setting to a developer job, so score the effort honestly rather than promising a quick win.

---

## 3. llms.txt

A plain-text file at the site root that describes the business in language a machine can use directly. It is a young convention, not a mandated standard — say that, and note that it costs twenty minutes.

```
# Ridgeline Pool & Spa

> Residential pool and hot tub service in the Central Okanagan, BC.
> Family-owned since 2009.

## What we do
- Pool openings and closings
- Weekly maintenance plans, May to September
- Pump, filter and heater repair; heat pump installs
- Hot tub service

## Where we work
Kelowna, West Kelowna, Lake Country and Peachland, BC.

## Hours
Monday-Friday 8am-5pm. Saturday 9am-1pm, May to September only.

## Contact
Phone: 250-555-0134
Email: service@ridgelinepools.ca
Address: 1880 Example Road, Kelowna, BC

## Key pages
- Services: https://ridgelinepools.ca/services
- Maintenance plans: https://ridgelinepools.ca/plans
- Contact: https://ridgelinepools.ca/contact
```

Facts only, verified with the owner. Every line here is something an assistant may repeat to a customer, so a wrong hour or a stale phone number does direct damage.

---

## 4. Structured data

Schema.org JSON-LD makes facts explicit instead of leaving them to be inferred from prose. Both search engines and assistants read it.

| Type | Use for |
|---|---|
| `LocalBusiness` or a subtype | The business itself, on the homepage and contact page |
| `Service` | Each service page |
| `Product` and `Offer` | Store items |
| `FAQPage` | Real question-and-answer sections |
| `Review` and `AggregateRating` | Only for reviews genuinely collected and displayed |
| `BreadcrumbList` | Site hierarchy |

Two rules. **Only mark up what is visible on the page** — marking up content a visitor cannot see is cloaking. **Only mark up what is true** — an `AggregateRating` on reviews that do not exist is fabrication, and it is the kind that gets caught.

---

## 5. Fact clarity

Assistants quote what is stated plainly and skip what is buried in marketing language.

- **Service area:** name the towns. "The Okanagan" tells a machine little.
- **Hours:** exact, in one place, matching every listing.
- **Pricing:** a real range beats silence. "Pool openings start at CAD 289" is quotable.
- **Credentials:** license numbers, certifications, years in business — only real ones.
- **What is included:** specifics, not adjectives.

Contradictions are the quiet killer. Two phone numbers, three sets of hours, an old address in the footer. Machines have no way to pick the right one and will sometimes pick the wrong one.

---

## 6. Off-site presence

Assistants lean heavily on third-party sources. A business absent from them is close to invisible regardless of site quality.

- Google Business Profile — claimed, complete, correct
- Trade and industry directories relevant to the work
- Review platforms with recent, real reviews
- Local chambers, associations, supplier locators

Name, address, and phone must match the website character for character. Mismatches are a leading cause of a business being described incorrectly.

---

## 7. The assistant test

Ask what a customer would ask, in several phrasings, and record what comes back verbatim.

```
Asked 2026-07-27, three phrasings:

"Who does pool openings in West Kelowna?"
  → Named 4 companies. Ridgeline Pool & Spa not among them.
  → Cited: two directory pages, one review site, one competitor's site.

"Pool maintenance plans Kelowna BC"
  → Named 3 companies. Ridgeline Pool & Spa not among them.

"Ridgeline Pool & Spa Kelowna"
  → Found the business. Hours given were wrong — said closed Saturday.
     The site says Saturday 9am-1pm in season. The Google listing says closed.
```

That third result is worth more than the first two. It is a specific, fixable error producing real lost calls.

**Record what happened. Do not compute a score.** Results vary between runs and between assistants, and a number invites false precision. Repeat monthly and report direction.
