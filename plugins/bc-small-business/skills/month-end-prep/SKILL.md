---
name: month-end-prep
description: Reconcile one month of Sage 50 books against Cova, bank and card deposits, flag duplicates, miscoding and missing receipts, write a P&L summary. Use for "reconcile last month".
---

# Month-End Prep

Reconcile one month for **one business** (Cannabis Cottage or Fun Water Pools),
flag what needs attention, and write a plain-English summary of the month. This is
step 1 of `close-month`. Use this skill on its own when she only wants the
reconciliation and flags ("just reconcile", "what's missing from the books",
"find duplicates", "write up last month").

Read first: `references/common/ground-rules.md`, `references/common/business-profiles.md`,
`references/common/sage50-canada.md`. For Cannabis Cottage also read
`references/common/cova.md`.

All thresholds below are in CAD: **0.50** rounding, **0.01** duplicate match,
**25** receipt check, **10%** month-over-month change.

## Step 1: Business and month

1. Confirm the business (`business-profiles.md`, Rule 1).
2. Agree the month. Default to the previous calendar month. Confirm before asking
   for files.
3. Ask whether the month is already **filed** in a GST or PST return. If yes, warn
   that changes to a filed period need the accountant's advice, and only flag
   issues, never propose changes to that period.

## Step 2: Ask for the files, all at once

Give her one checklist with exact menu paths (from `sage50-canada.md` / `cova.md`):

**Both businesses**
- [ ] Sage 50 **Income Statement** for the month, and for the prior month
- [ ] Sage 50 **Transactions by Account** for the month (all accounts, detail, not totals only)
- [ ] Sage 50 **Balance Sheet** as of month-end
- [ ] **Bank statement(s)** for the month (PDF or CSV from online banking), every business account
- [ ] Card processor monthly statement, if the business takes cards
- [ ] Receipts she has for the month (photos or PDFs), or tell me they're in a folder/email

**Cannabis Cottage, add**
- [ ] Cova **Sales Summary** (month) and **End of Day** by day (month)
- [ ] Cova **Inventory On Hand** as of month-end, and **Inventory Adjustment** report

**Fun Water Pools, add**
- [ ] Sage 50 **Customer Aged Detail** and **Vendor Aged Detail** as of month-end

She can send what she has now. Work with what arrives and keep a running list of
what's still missing. **Never skip a step silently.** If a file never comes, the
step is "not done, no file", stated in the summary.

Check every Sage report header: right company, right dates, detail not totals,
and the session date isn't before month-end (`sage50-canada.md`, traps 1, 3 and 5).

## Step 3: Needs-attention items in the register

From Transactions by Account, list:
- Lines in suspense, "Uncategorized", "Ask accountant", or an obviously wrong
  account (e.g. a supplier bill in Office Expense when history says Inventory/COGS)
- Entries with no reference or memo above CAD 25
- Entries dated outside the month
- Manual journal entries to bank or tax accounts (worth a second look)

Show the count and the list. She fixes these in Sage 50. Don't move on with open
items unless she says "skip for now". Skipped items go in the summary.

## Step 4: Reconcile

**4a. Bank.** Bank statement closing balance vs. Sage 50 bank account balance at
month-end. If she reconciles in Sage 50 (Account Reconciliation), check the report
shows the month done. Otherwise match deposits and withdrawals:
- Match: same amount (within 0.50), dates within 3 days → reconciled
- On the statement, not in Sage 50 → "missing in the books"
- In Sage 50, not on the statement → "not cleared" (cheque outstanding is normal; a deposit not cleared is not)

**4b. Sales (Cannabis Cottage).** Follow `cova.md` "Matching Cova to Sage 50":
Cova net sales and GST/PST vs. Sage 50 sales and tax accounts; card totals vs.
processor deposits (**net to net**, 1 to 3 day window); cash vs. cash deposits;
inventory on hand vs. the inventory account.

**4c. Sales (Fun Water Pools).** Sales invoices in Sage 50 vs. deposits; payments
received on account; any job invoiced with no deposit after its terms is AR, not a
reconciliation gap.

**4d. Sales tax accounts.** GST collected and PST collected for the month should
roughly equal the tax rate times taxable sales. A big gap means coding or rate
errors. Fun Water Pools: real-property installs may carry no PST
(`canada-bc-tax.md`), so ask before flagging.

Differences under 0.50: note, don't flag. 0.50 or more: flag with the amount.

## Step 5: Suspicious duplicates

Flag a pair when all three match: **same amount (within 0.01), same vendor or
customer, within 5 days**. Also check same vendor + same invoice number at any date
(the most reliable duplicate signal in Sage 50). She decides each pair:
legitimate repeat or real duplicate. Say what was scanned ("same amount and vendor
within 5 days, plus repeated invoice numbers"). Never call the month "clean". See
`references/gotchas.md` for false positives.

## Step 6: Receipts

For each expense over CAD 25: is there a receipt (uploaded, in the email folder she
names, or she confirms)? Match by amount (within 0.50) and date (within 3 days).
List missing ones. She can mark "not required" (e.g. bank fees). Explain why this
matters once: GST input tax credits need a valid invoice.

## Step 7: Payroll check (if the business has employees)

If payroll runs in Sage 50, ask for the Payroll Journal / summary for the month.
Check that gross wages + employer CPP/EI = payroll expense lines, and that the
source-deduction liability account matches what's due to the CRA by the 15th.
**Totals only.** No names or per-person pay in this output
(`ground-rules.md`, rule 4). No employees: skip and say so.

## Step 8: Sign-off gate

Show:

```
Needs attention:        X found, X fixed, X skipped
Bank reconciliation:    reconciled / X items open / no statement
Sales match (Cova):     matched / CAD X difference / n.a.
Sales tax accounts:     look right / X to check
Possible duplicates:    X flagged, X cleared
Missing receipts:       X outstanding (CAD X total)
Payroll:                matched / CAD X difference / no employees / no report
```

Ask: *"Ready for me to write the month summary and the close packet?"*
**Don't continue without a yes.**

## Step 9: Month summary (P&L narrative)

150 to 250 words, plain English, the kind she'd share with her husband or the
accountant:
1. **Headline**: "October came in at CAD 12,400 net income, up 6% on September."
2. **Sales**: what drove them (Cova category mix for Cannabis Cottage; jobs for Fun Water Pools).
3. **Gross margin**: held, rose or fell, and why (Cannabis Cottage: watch
   wholesale cost changes and discounts; Fun Water Pools: materials vs. labour).
4. **Expenses**: any line that moved more than 10%, one sentence each.
5. **Bottom line**: net income vs. last month.
6. **Watch list**: 1 to 3 things for next month.

Fun Water Pools is seasonal. Compare to the **same month last year** when she has
it, because month-over-month swings in the off-season mislead. See
`references/examples/pl-narrative.md`.

## Step 10: Close packet

- **Sheet / Excel workbook** `close-packet-<business>-<YYYY-MM>`: tabs **P&L**,
  **Reconciliation** (matched and flagged items), **Action items** (open flags), and
  **Keying sheet** (corrections for her to enter in Sage 50, per `sage50-canada.md`).
  Add **Payroll** (totals) if Step 7 ran.
- **One-page summary** (doc or PDF): business, month, revenue, gross margin %,
  net income, the narrative, open item count.

Follow the profile's output preference. See `references/close-packet-format.md`.

## Step 11: After

One line: what closed and what's still open. Then one next step:
- "Cash forecast" → `cash-flow-snapshot` on the reconciled numbers
- "Close the month" → `close-month` if she only ran this step
- "Taxes" / "GST return" → `tax-prep` when a GST/PST period or year-end is near

## Never

- Never change a filed period or tell her to.
- Never say an entry was posted. Claude writes keying sheets; she enters them.
- Never mix the two businesses' files.
- Never put per-person pay, SINs or full account numbers in the packet.
