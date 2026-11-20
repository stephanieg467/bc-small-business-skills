---
name: cash-flow-snapshot
description: 30/60/90-day cash forecast for one business from Sage 50 exports, Cova sales and the bank balance, with ranges and named risks. Use for "cash forecast" or "how is cash looking".
---

# Cash Flow Snapshot

A 30/60/90-day cash forecast with a low/expected/high range and named risks, for
**one business**. Read-only: it changes nothing.

Read first: `references/common/ground-rules.md`, `references/common/business-profiles.md`,
`references/common/sage50-canada.md`; Cannabis Cottage also `references/common/cova.md`.

## Step 1: Business and starting cash

1. Confirm the business.
2. **Get the opening balance. Never assume one.** Ask: *"What's in the business
   bank account right now, and as of what date?"* or use the latest bank statement
   or Sage 50 Balance Sheet she uploads. If nobody knows, head the output
   "No opening balance: net change only" and drop cash-on-hand risks.
3. If the call came from another skill (`pay-the-bills`, `plan-payroll`,
   `close-month`), use the figures it passes in (staged bills, payroll date,
   closed-month numbers) instead of asking again.

## Step 2: Inflows

**Cannabis Cottage (retail, daily sales):**
- Ask for Cova **Sales Summary** or **End of Day** for the last **8 to 12 weeks**
  (and the same weeks last year if she has them).
- Build a **daily sales pattern by weekday** (Fridays and Saturdays are higher)
  and note holidays and paydays in the window (long weekends, 4/20, December).
- Turn sales into cash: cash sales land same day; card sales land net of fees on
  the processor's schedule (usually 1 to 2 business days). GST and PST collected
  are **not the business's money** (see outflows).
- Range: use the spread of the last 8 to 12 weeks (lowest and highest weekly
  totals) as low/high, not a made-up percentage.

**Fun Water Pools (invoiced jobs, seasonal):**
- Sage 50 **Customer Aged Detail** (AR) plus the **Receipt Transaction Details**
  for the last 6 to 12 months to work out how late each customer usually pays.
- Booked work not yet invoiced: ask ("Any jobs booked in the next 90 days?
  Deposits expected?").
- **Seasonality matters more than anything here.** Ask for the same 90 days last
  year from the Income Statement. Off-season inflows can be close to zero.
- Range per customer: mean days late ± the spread of their last 3+ payments.
  Fewer than 3 payments: use the average for all customers and a ±30% range, and
  say so.

## Step 3: Outflows

- **Bills (AP)**: Sage 50 **Vendor Aged Detail**. Read the detail, not the
  summary, because credits hide in summaries.
- **Fixed costs**: rent, insurance, loan payments, subscriptions, utilities, from
  the last 2 to 3 months of Transactions by Account (or she lists them).
- **Payroll**: pay dates and typical net pay plus **source deductions to the CRA,
  due the 15th of the following month** (`references/common/bc-payroll.md`).
- **Sales tax remittances**: GST and PST collected must be paid on the business's
  filing schedule (`references/common/canada-bc-tax.md`). For Cannabis Cottage
  that's 12% of taxable sales (more on vapour products), which is a large number.
  Put the next due dates in the window.
- **Inventory purchases**: Cannabis Cottage's wholesale orders (usual size and
  frequency); Fun Water Pools' spring stock order if it falls in the window.
- **Income tax instalments** if the profile says they apply.
- **WorkSafeBC** premium if due in the window.

## Step 4: Forecast

Three windows: days 0 to 30, 31 to 60, 61 to 90.

| Line | How |
|---|---|
| Inflows | Step 2, by window |
| Outflows | Step 3, by due date |
| Net | Inflows − outflows |
| Cash at end of window | Opening balance + running net |
| Low / high | From the ranges above (inflows low/high; outflows as known) |

Also find the **lowest point** inside each window (e.g. the day before a payroll
or a GST remittance), not just the end balance. Cap any range at ±50%; wider than
that means the data is too thin, so flag it instead.

## Step 5: Risks (top 5, biggest dollar impact first)

Examples:
- "GST and PST for Q3 (about CAD 14,300) are due 31 October. Low-range cash that day is CAD 3,100."
- "Payroll of CAD 9,400 on the 15th lands the same day as the CRA source-deduction remittance (CAD 3,200)."
- "Customer Lakeview Strata usually pays 24 days late, which pushes CAD 6,800 out of the 30-day window."
- "Only 4 weeks of Cova history provided, so the range is wide."
- "No opening balance given: net change only."

## Step 6: Deliver

**Chat summary** first:
- Business · sources used · opening balance and date
- Markdown table: Window | Expected net | Low | High | Lowest cash point (date)
- "Risks flagged: X" with one line each

**Sheet / workbook** `cash-flow-<business>-<YYYY-MM-DD>`:
1. **Summary**: the 30/60/90 table with ranges; under each window, the inflow and
   outflow lines that make it up.
2. **Detail**: every dated inflow and outflow with a running balance; subtotal per window.
3. **Risks**: risk, CAD impact, window.

Close with: *"This forecast is based on [sources]. It's a planning tool, not
accounting advice. Check with your accountant before borrowing or making big
commitments."*

## After

One next step:
- Payroll looks tight → "plan payroll" (`plan-payroll`)
- AR is the gap (Fun Water Pools) → "who owes me money" (`invoice-chase`)
- Books not closed recently → "close the month" (`close-month`)

If she wants this monthly, follow `ground-rules.md` rule 8 (honest scheduling).

## Never

- Never assume an opening balance.
- Never count GST/PST collected as spendable cash.
- Never combine the two businesses' cash.
- See `references/gotchas.md`.
