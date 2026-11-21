---
name: report-builder
description: Turn a plain-English request into a repeatable report from Sage 50 and Cova exports, with a summary and workbook, saved for reuse. Use for "build me a report".
---

# Report Builder

She describes a report once. Claude builds it, runs it, and writes down the
definition so next time she just says its name.

Read first: `references/common/ground-rules.md`, `references/common/business-profiles.md`,
`references/common/sage50-canada.md`; Cannabis Cottage also `references/common/cova.md`.

## Step 1: Check for a saved definition

Saved report definitions live in a **"Saved reports"** file in the project's
knowledge, or in the project instructions (Claude can't save into the skill
itself). Look there first. If she says "same report as last time", "run the monthly
one", or names a saved report, go straight to Step 4. Never re-interview her about
a report she already defined.

## Step 2: Turn the description into a spec

Resolve her sentence into (format in `references/report_spec.md`):
- **Metrics**: each named, with formula and source report
- **Grouping**: by product category, by job type, by month, by customer
- **Comparison**: prior period, same period last year, a target
- **Period**: calendar month, fiscal quarter, year-to-date (fiscal year from the profile)
- **Business**: which one (never both in one metric; a side-by-side needs her to ask)

Infer what's clear. Ask only what's ambiguous, all at once. The two that almost
always need asking: *which period* and, for any percentage, *percent of what*
(labour % of sales or of total costs?).

## Step 3: Confirm once

Show the spec as a short block. One confirmation, then build. If she corrects
something, apply it and go. Don't re-confirm.

## Step 4: Get the data

List exactly which exports are needed for this spec, with menu paths
(`references/data_sources.md`). She uploads them. If one never arrives, that metric
shows "n/a (no <report> provided)" and the rest of the report still runs.

## Step 5: Compute and sanity-check

- **Partial periods**: a month-to-date vs. a full prior month always looks like a
  collapse. Compare like for like or label it partial.
- **Seasonality**: Fun Water Pools comparisons should default to same period last
  year.
- **Double counting**: Cova sales and Sage 50 sales are the same sales. Pick one
  source per metric and say which.
- **Tax-inclusive figures**: Cova can show sales with or without GST/PST. Use
  pre-tax sales for revenue.
- **Empty groups** show as zero, not missing.
- **Totals must tie**: grouped rows should sum to the total; if not, say so.
See `references/gotchas.md`.

## Step 6: Deliver

1. **Chat summary first** (`references/output_template.md`): numbers lead, each with
   its comparison, three findings maximum, outliers named ("Vapes are down 18%, the
   only category below last year").
2. **Sheet / workbook**: Summary tab, one tab per metric group, raw data tab last so
   she can check the maths.

## Step 7: Save the definition

Write the spec as a short text block titled `Saved report: <name>` and tell her:
*"To reuse this, add it to your project's 'Saved reports' file (or paste it into the
project instructions). Next time just say 'run <name>'."* If she has no Saved
reports file yet, give her the whole file to create. Be clear that **saving a
definition doesn't schedule it** (`ground-rules.md` rule 8).

## After

One next step: "report pack" (`report-pack`) to bundle her regular reports with a
quick health check; "cash forecast" if the report raised a cash question; "close the
month" if the books for the period aren't closed yet (reports on unclosed books
are provisional, so say so).

## Never

- Never invent a number. Missing is "n/a" with the reason.
- Never lead with a table.
- Never mix businesses in one metric.
