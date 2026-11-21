# Sage 50 Canada: getting data out, and what Claude can't do

Sage 50 Canada (formerly Simply Accounting) is **desktop software**. There is no
Claude connector for it. Claude can't read the company file, can't post an entry,
and can't pay a bill. Everything comes in as an **exported report she uploads**,
and everything goes back as **a list she keys into Sage 50** herself.

Say this once, the first time it matters, without apologising: *"Sage 50 lives on
your computer, so I work from reports you export. I'll tell you exactly which ones."*

## How to export any report (tell her this the first time)

1. Open the right company file. Check the business name in the title bar. Each
   business has its own file.
2. **Reports menu > Report Centre**, pick the category and the report, click
   **Modify this report** to set the dates and options, then **Display**.
3. With the report on screen, click the **Excel** button on the toolbar (or
   File > Export) and save it. For data Claude will compute from, choose the
   **raw data layout** if it's offered, because it's cleaner than the formatted layout.
4. Upload the file into the chat (drag it in). PDF works when Excel won't, but
   Excel or CSV is better for anything with many rows.

Menu names vary a little between Sage 50 versions (Pro, Premium, Quantum) and years.
If she can't find a report, ask what she sees in Report Centre and work from that.
Never insist on a menu path.

## Which report for which job

| Need | Report Centre path | Notes |
|---|---|---|
| Profit and loss for a month | Financials > **Income Statement** | Set the date range to the month. Also run the same report for the prior month to compare. |
| Year-to-date P&L | Financials > Income Statement, fiscal-year start to date | Check the fiscal year start in the profile. |
| Balance sheet / bank balance | Financials > **Balance Sheet** as of a date | Bank balances as of the date. |
| Trial balance | Financials > **Trial Balance** | Quick check that debits equal credits. |
| Every transaction (the register) | Financials > **Transactions by Account** (all accounts) or **All Transactions** | The workhorse for duplicates, miscoding and receipts. |
| General ledger detail | Financials > **General Ledger** | Same data by account. |
| Bills owed (AP) | Vendors & Purchases > **Vendor Aged** (Detail) or **Aged Overdue Purchase Invoices Detail** | Use **Detail**, not Summary. See trap 2. |
| Who owes us (AR) | Customers & Sales > **Customer Aged** (Detail) or **Aged Overdue Sales Invoices Detail** | Cannabis Cottage is mostly cash/card retail and may have almost no AR. That's normal. |
| Payments to vendors | Vendors & Purchases > **Payment Transaction Details** / **Purchase Transaction Details** | Used for T4A / T5018 lists. |
| Sales tax | **Taxes** reports (GST/HST report, tax report by tax code), or Financials if her version puts them there | Compare to the GST and PST accounts on the balance sheet. |
| Bank reconciliation status | Banking > **Account Reconciliation** report (if she uses the reconciliation module) | If she doesn't reconcile in Sage, ask for the bank statement PDF or CSV. |
| Payroll totals | Employees & Payroll > **Payroll Journal / Employee Summary** | Only if payroll is done in Sage 50. Totals only in month-end work. |
| Chart of accounts | Financials > **Chart of Accounts** | Ask once per business and keep it in project knowledge. Coding uses it. |

## Traps

1. **Wrong company file.** The most likely mix-up with two businesses. Check the
   company name in every report header against the business you're working on.
2. **Summary reports hide credits.** An aged summary nets vendor or customer credits
   into the total. Read the **Detail** version and total the rows yourself. A negative
   line means a credit exists, so point it out separately.
3. **Report dates vs. session date.** Sage 50 has a "session date" and won't show
   transactions after it. A report that looks short at month-end may just mean the
   session date wasn't advanced. Ask before calling a month empty.
4. **Cash vs. accrual.** Some reports can be run on a cash basis. Ask, or read the
   report header, and say which basis the numbers are on.
5. **Totals-only option.** A report run with "Totals only" or collapsed accounts can't
   be used to find duplicates or missing receipts. Ask for the detail.
6. **Formatted Excel exports** put headers, blank rows and subtotal rows in the data.
   Strip them before computing, and never count a subtotal row as a transaction.
7. **Departments / projects.** If she uses departmental or project reporting, ask
   whether reports should be split that way.

## What goes back into Sage 50

Claude never says "posted" or "entered". It produces:
- **A keying sheet**: one row per entry, with date, vendor or customer, Sage 50
  account number and name, amount before tax, GST, PST, total, reference or
  invoice number, and memo, in the order she'll type them (Purchases Journal,
  Sales Journal, General Journal, Payments Journal). Show which journal each row goes in.
- **A journal entry** for adjustments (debits and credits balanced, with the
  account numbers from her chart of accounts).
- Every proposed account must exist in her chart of accounts. If you don't have the
  chart yet, label proposed accounts "unverified, confirm this account exists" and
  ask for the Chart of Accounts report.

After she keys entries in, the next export is the proof. Offer to re-check it.
