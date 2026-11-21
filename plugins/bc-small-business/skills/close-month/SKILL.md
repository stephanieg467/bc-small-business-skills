---
name: close-month
description: 'Close the month for one business: reconcile the Sage 50 books, refresh the cash forecast on closed numbers, then package the packet for the accountant. Use for "close the month".'
---

# Close the Month

Three steps in a fixed order: **close, then forecast off the closed books, then
package.** The order is the point. A forecast on unreconciled books inherits
every error in them.

Read first: `references/common/ground-rules.md`, `references/common/business-profiles.md`.

Confirm the business and the month (default: previous month) before anything else.

## Step 1: Close and reconcile (month-end-prep)

Run `month-end-prep` start to finish for that month.
- **Out:** reconciliation, flags, the month summary, the close packet.
- **Gate:** month-end-prep's sign-off. Every flag is fixed or explicitly skipped
  before going on.
- This step owns the numbers. Nothing later recodes a transaction or restates sales.

**Hard gate before Step 2.** Say what's settled and what isn't:
> "October is closed for Cannabis Cottage: bank reconciled, Cova matches, two receipts still missing. Ready to refresh the cash forecast off these numbers?"

If items are still open, name them and ask whether to forecast anyway.

## Step 2: Forecast off the closed books (cash-flow-snapshot)

Run `cash-flow-snapshot` using the closed month as the base (actual sales pattern,
actual fixed costs, actual deposit timing). Don't re-ask for files that Step 1
already received. One line in the output:
> "This forecast uses October's reconciled numbers, not the raw books."

## Step 3: Package (report-builder)

Merge into one close packet: what the month was, what the books say, the next
90 days, what's still open. Use `report-builder` for the workbook layout. Offer to
save it as a saved report called "monthly close" so next month uses the same shape.

**Sending to the accountant or her husband is a separate yes.** Draft the
covering email (Zoho Mail draft if connected, otherwise text to paste; see
`references/common/zoho-mail.md`), show it, and wait.

## Output

A short recap: revenue and margin, gaps still open, 30-day forecast (expected
and low) and its top risk, and the files. List anything skipped so she can come
back to it.

## After

One next step:
- Forecast shows a payroll squeeze → "plan payroll"
- Fun Water Pools AR is the gap → "who owes me money"
- A GST/PST period just ended → "tax prep"

## Never

- Never forecast before the close is signed off.
- Never fix a flagged item without her.
- Never send the packet without approval.
- Never mix the two businesses.
