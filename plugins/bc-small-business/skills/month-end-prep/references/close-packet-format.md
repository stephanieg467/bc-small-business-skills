# Close packet format

File name: `close-packet-<business-short-name>-<YYYY-MM>` (e.g. `close-packet-cannabis-cottage-2026-10`).

## Workbook (Claude sheet, or .xlsx if requested)

Money columns formatted `CAD #,##0.00`, negatives in red. Freeze the header row.

### P&L
| Account | This month | Prior month | Change | Change % | Same month last year (if given) |
Revenue, cost of goods sold, **gross margin** (row), operating expenses, **net income** (row).
Use the account names from her Sage 50 Income Statement.

### Reconciliation
| Date | Source (Bank / Cova / Processor / Sage 50) | Description | Amount | Matched to | Difference | Status |
Status values: Reconciled · Rounding (<0.50) · Flagged · Missing in books · Not cleared.

### Action items
| # | Type (Needs attention / Duplicate / Missing receipt / Reconciliation) | Date | Vendor/customer | Amount | What to do | Status (Open / Skipped / Fixed) |

### Keying sheet
| Journal (Purchases / Sales / General / Payments) | Date | Vendor or customer | Account no. | Account name | Amount before tax | GST | PST | Total | Reference | Memo |
General journal rows: Account, Debit, Credit, with a balancing check row.
Every proposed account must exist in her chart of accounts, or be labelled "unverified".

### Payroll (only when payroll ran)
| Pay date | Gross wages | Employer CPP | Employer EI | Total payroll cost | Sage 50 payroll expense | Difference |
Totals only. No names.

## One-page summary (doc or PDF)

- Title: `<Business name>, month-end <Month YYYY>`
- First line: *"Prepared for review by your accountant."*
- Three figures: Revenue · Gross margin % · Net income (each with change vs. prior month)
- The 150 to 250 word month summary
- "Open items: X" with the top three listed
- Files checked (which reports and statements were used)
