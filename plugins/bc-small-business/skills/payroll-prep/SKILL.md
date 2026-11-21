---
name: payroll-prep
description: 'Prep a BC payroll run: total hours, apply BC daily and weekly overtime and stat rules, flag every anomaly, build a run sheet for Sage 50 payroll. Use for "run payroll" or "check timesheets".'
---

# Payroll Prep

Get the run right before a dollar moves. Hours in, BC rules applied, **every
anomaly raised, never quietly fixed**, and a run sheet she approves line by line
and enters in her payroll system. Claude never runs payroll.

Read first: `references/common/ground-rules.md`, `references/common/business-profiles.md`,
`references/common/bc-payroll.md`.

## Step 1: Fix the period first

Confirm the business, then: pay period start and end, pay date, pay frequency, and
who's in this run (new hires mid-period, terminations, anyone on leave). Check the
pay date is within **8 days** of the period end (BC rule). Note any **BC statutory
holiday** in the period (`bc-payroll.md`) and check who qualifies.

Ask where payroll is done (from the profile): Sage 50 payroll module, a payroll
service, or by hand with CRA PDOC. That decides the output format.

## Step 2: Get the hours

Whatever she has: a scheduling or time-clock export (Cova's employee time report
if Cannabis Cottage clocks in through Cova), a spreadsheet, or photos of paper
timesheets. Ask for **last period's** run or Sage 50 Payroll Journal too, for comparison.
Also the current pay rates (or the Sage 50 employee list with rates). **Read and
use rates; don't repeat other personal details.**

Normalise to one row per person per day: date, in, out, unpaid break, hours, and
job (Fun Water Pools, if she tracks labour by job).

## Step 3: Total the hours with BC rules

Per person, per day, then per week:
- regular hours
- **daily overtime**: over 8 hours in a day at 1.5x, over 12 at 2x
- **weekly overtime**: over 40 hours at 1.5x, counting only the first 8 hours of each day
- stat holiday: average day's pay for eligible employees; working the stat is
  1.5x (2x after 12) plus the average day's pay
- vacation pay per her method (each cheque at 4%/6%, or accrued)
- sick days (up to 5 paid per year after 90 days)

If an **averaging agreement** or **overtime bank** exists, ask before applying
different rules. **Never fill a missing punch with an assumed time**; the hours are
unknown and get flagged. Edge cases: `references/anomaly_rules.md`.

## Step 4: Flag every anomaly

Each flag names the person, the date and what's wrong. Full list in
`references/anomaly_rules.md`. The big ones:
- missing clock-in/out, overlapping or duplicate shifts
- **daily overtime not paid** (worked 10 hours, paid 10 at straight time)
- rate below the current BC minimum wage (check the current figure)
- rate changed since last run
- zero hours for someone who usually works; hours far above schedule
- shift under 2 hours (minimum daily pay)
- someone paid last period missing now; someone new with no hire info
- a stat in the period with no stat pay calculated
- final pay timing for anyone leaving (48 hours if let go, 6 days if they quit),
  plus a **ROE** reminder

## Step 5: Show the run

Run sheet, person by person: regular, OT 1.5x, OT 2x, stat, vacation pay, **gross pay**,
with flags beside the person. Totals: people, hours, gross. Compare with last
period and explain any change over 10% (a stat, an extra shift, a new hire).

**Deductions**: CPP, CPP2, EI and income tax come from Sage 50 payroll, the CRA
PDOC or her service, not from Claude. Remind her the **employer share of CPP and EI**
plus withholdings is due to the CRA by the 15th of next month (regular remitter), so
cash needed = net pay now + remittance later. If cash numbers exist
(`cash-flow-snapshot`), say whether both clear; if not, say that plainly.

## Step 6: Resolve the flags, one at a time

For each flag: what was found, what happens if left, what she wants. Record the
answer. **Never batch them into one "looks good?"**. Each is someone's pay.

## Step 7: Approval

Before asking, state the people, total hours, total gross, pay date, and how many
flags are left open. Then ask. If she wants to skip this step, say once, kindly,
that it stays because a wrong direct deposit can't be taken back.

## Step 8: Hand off to payroll and the books

- **Sage 50 payroll**: a keying sheet per employee (hours by type, earnings lines)
  for the Paycheques or Payroll Run journal. Sage calculates the deductions. After
  she runs it, ask for the Payroll Journal to confirm totals match the run sheet.
- **Payroll service / PDOC**: the same run sheet in their input layout.
- **Books**: if payroll isn't done inside Sage 50, a General Journal entry (gross
  wages, employer CPP/EI expense, liabilities for withholdings and net pay), using
  her account numbers.

## Output

The run sheet (sheet), the flag list with her decisions, and the keying sheet.
Per-person pay appears **only** here, never in month-end or reports.

## Never

- Never auto-correct a flag.
- Never compute deductions as if final; they come from Sage/PDOC/service.
- Never run, submit or pay payroll.
- Never show SINs, birth dates, home addresses or bank details.
- Never mix the two businesses' employees.
