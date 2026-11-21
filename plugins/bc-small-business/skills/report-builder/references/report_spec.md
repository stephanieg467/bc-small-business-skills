# Report spec format

```
Saved report: <short name>
Business: <Cannabis Cottage | Fun Water Pools>
Created: <YYYY-MM-DD>
Period each run: <calendar month | fiscal quarter | fiscal YTD | trailing 4 weeks>
Comparison: <prior period | same period last year | target: ...>
Metrics:
  1. <name>: <formula>. Source: <report>
  2. ...
Grouping: <...>
Files needed each run: <list with menu paths>
Cadence she wants: <on request | monthly | weekly> (not automatic unless a scheduled task was set up)
Notes: <decisions made, e.g. "labour % = gross wages + employer CPP/EI ÷ net sales">
```

## Example: Cannabis Cottage monthly category report

```
Saved report: monthly category report
Business: Cannabis Cottage
Period each run: calendar month
Comparison: prior month and same month last year
Metrics:
  1. Net sales by category (flower, pre-rolls, vapes, edibles, beverages, extracts, accessories). Source: Cova Sales Summary / sales by category
  2. Gross margin % by category: (net sales − cost) ÷ net sales. Source: Cova sales by category with cost
  3. Discounts as % of gross sales. Source: Cova Sales Summary
  4. Average transaction value: net sales ÷ transaction count. Source: Cova Sales Summary
  5. Labour %: payroll cost ÷ net sales. Source: Sage 50 Income Statement
Files needed each run: Cova Sales Summary (month), Cova sales by category (month, with cost), Sage 50 Income Statement (month)
```

## Example: Fun Water Pools job mix

```
Saved report: job mix
Business: Fun Water Pools
Period each run: fiscal quarter
Comparison: same quarter last year
Metrics:
  1. Revenue by job type (installs, service/maintenance, openings/closings, retail chemicals and parts). Source: Sage 50 sales accounts or Sales by Item report
  2. Gross margin by job type, where materials are coded by job type
  3. AR over 30 days: total and count. Source: Customer Aged Detail
```
