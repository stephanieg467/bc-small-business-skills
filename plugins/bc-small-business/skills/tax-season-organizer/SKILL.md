---
name: tax-season-organizer
description: 'Prepare BC/Canada tax material for the accountant from closed books: GST/PST worksheets, T4A/T5018 lists, year-end packet, instalment dates. Not tax advice. Use when books are closed.'
---

# Tax Season Organizer

Prepares tax material **for her accountant**, for one business, from **closed**
books. Nothing is filed, ever. Any tax request starts at `tax-prep`, which closes
the books first. Use this skill directly only when she says the period is already
closed ("books are closed, do the GST worksheet").

Read first: `references/common/ground-rules.md`, `references/common/business-profiles.md`,
`references/common/canada-bc-tax.md`, `references/common/sage50-canada.md`.

**Every output opens with:** *"Prepared for review by your accountant. Not tax advice."*

## Step 0: Business, profile, mode

1. Confirm the business. Read from the profile: legal structure, fiscal year end,
   GST frequency and method, PST frequency, whether it has employees, and what
   the accountant does. **If structure or filing frequency is missing, ask.**
   Don't guess (`business-profiles.md`).
2. Pick the mode from what she asked, or from the date if she just said "taxes":

| Mode | When |
|---|---|
| **A. GST return worksheet** | A GST period just ended (per her frequency) |
| **B. PST return worksheet** | A PST period just ended |
| **C. Year-end slips list** (T4A box 048, T5018, T4 check) | January to February |
| **D. Year-end accountant packet** | After fiscal year-end |
| **E. Instalment check** | Near an instalment date, or "how much should I set aside" |

State the mode in one line and let her redirect.

## Mode A: GST return worksheet

Files: Sage 50 GST report / tax report for the period; Balance Sheet at period end
(GST accounts); Cannabis Cottage: Cova Sales Summary for the period.

1. **Sales and other revenue** (line 101): pre-tax sales for the period.
2. **GST collected** (line 103, totalled with any adjustments on line 105): from the
   Sage 50 GST Charged account / tax report. Cannabis Cottage: cross-check against
   Cova's GST collected. Difference over CAD 0.50 → flag.
3. **Input tax credits** (line 106, totalled on line 108): GST paid on business
   purchases from the GST Paid account. List any ITC over CAD 100 with no receipt
   (from month-end missing-receipt lists); the accountant may disallow those.
4. **Net tax** (line 109) = line 105 − line 108. Instalments already paid go on
   line 110 (ask). Line numbers per the CRA GST return as of November 2026; confirm
   against the return in her CRA account.
5. **Quick Method**: if the profile says Quick Method, don't compute ITCs the usual
   way. Say the accountant applies the Quick Method rate and list the figures they need.
6. Due date per her frequency (`canada-bc-tax.md`).

Output: a one-page worksheet with each line, its source report, and any flags.

## Mode B: PST return worksheet

Files: Sage 50 PST Payable account detail / tax report; Cannabis Cottage: Cova Sales Summary.
1. PST collected, split by rate (7% / 20% vapour for Cannabis Cottage).
2. **PST self-assessment**: taxable purchases where no PST was charged (e.g.
   out-of-province equipment or software). List candidates for her to confirm.
3. Commission: BC pays registered collectors a commission on PST remitted on
   time. Mention it but let eTaxBC calculate it.
4. Fun Water Pools: list sales with **no PST charged** and ask which were
   real-property installs (no PST) vs. goods or related services (PST due). This is
   the most likely place for an error; see `canada-bc-tax.md`.
5. Due date per the PST frequency in the profile; filed on eTaxBC.

## Mode C: Year-end slips list (calendar year)

Files: Sage 50 **Payment Transaction Details** / Vendor Purchases Detail for
1 January to 31 December; Vendor List.

1. **Total payments by payee** for the calendar year. Group name variants
   ("Bob's Repairs" and "Bobs Repair Ltd") **for her to confirm, never merge them
   automatically**.
2. Classify each payee: **services** (repairs, cleaning, bookkeeping, marketing,
   subcontract labour), **goods** (inventory, chemicals, parts), or **mixed**. Only
   services count. For mixed invoices, ask for the service portion. Exclude GST/PST.
3. **T4A box 048 candidates**: services over CAD 500 to a business or self-employed
   person. Employees are excluded (they get T4s).
4. **T5018 candidates (Fun Water Pools)**: if construction is the business's main
   activity, payments to subcontractors for construction services. Flag that the
   accountant confirms whether T5018 applies.
5. **Missing info list**: payee legal name, address, business number or SIN.
   Say "on file / missing". **Never show the numbers.**
6. **T4 check** (if employees): ask for the Sage 50 payroll year-end summary. Confirm
   the employee count, and that totals match payroll expense in the books. No
   per-person figures in this output; the T4 slips come from payroll.
7. Deadline: last day of February (T4, T4A); T5018 per `canada-bc-tax.md`.

## Mode D: Year-end accountant packet

After `tax-prep` has closed all 12 months:
- Year-end Income Statement and Balance Sheet; Trial Balance; General Ledger export
- Bank and credit card statements at year-end (reconciled)
- Cannabis Cottage: Cova Inventory On Hand at year-end (count date and value), and
  the inventory account in Sage 50; any gap explained
- Fixed asset additions (equipment, vehicles, leaseholds) with invoices
- Loans: year-end statements
- AR and AP Aged Detail at year-end
- GST and PST filings for the year and balances owing
- Payroll year-end summary and T4 summary total
- Shareholder/owner draws and loans (corporation: shareholder loan account;
  sole proprietor: drawings)
- Open questions list (e.g. PST treatment of mixed jobs, vehicle personal use %,
  home office)

Output: a checklist doc showing each item as **ready / missing / question**, plus a
cover note draft to the accountant (not sent).

## Mode E: Instalment check (no tax calculation)

- Read the structure. **Sole proprietor**: personal instalments 15 Mar / 15 Jun /
  15 Sep / 15 Dec when the conditions in `canada-bc-tax.md` apply. **Corporation**:
  monthly or quarterly corporate instalments, per the accountant.
- First question: *"Did the CRA send an instalment reminder with suggested amounts?"*
  If yes, paying those amounts on time is the simplest way to avoid instalment
  interest. Put them in a dated list.
- If she asks "how much should I set aside": give **year-to-date net income from
  closed books** and offer a **rough planning range** only if she asks, labelled:
  *"Rough planning figure, not a tax calculation. Your actual tax depends on your
  other income, credits and deductions. Ask your accountant."* Never present it as
  an estimate of tax owing.
- GST instalments for annual filers: list them if the profile says they apply.

## Guardrails

- Never file, never calculate final income tax, never give an opinion on a grey area.
  Name it as a question for the accountant.
- Never merge payees automatically.
- Never show SINs, business numbers or bank details in outputs.
- Never mix the two businesses.
- Check deadlines and rates are current (`canada-bc-tax.md` header).

## After

One next step: "cash forecast" to check the GST/PST payment or instalment clears on
its due date; "close the month" to keep the next period's work on closed books.
