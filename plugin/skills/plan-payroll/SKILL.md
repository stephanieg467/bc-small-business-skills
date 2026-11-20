---
name: plan-payroll
description: 'Payroll chain for one business: forecast cash across payday and the CRA remittance, chase overdue invoices if short, then prep the run. Use for "can I make payroll".'
---

# Plan Payroll

"Can I make payroll" and "run payroll" are one worry. Three steps in order:
know it's covered, close the gap if it isn't, then prep the run. **Claude never
runs payroll.**

Read first: `references/common/ground-rules.md`, `references/common/business-profiles.md`,
`references/common/bc-payroll.md`. Confirm the business.

Inputs: the pay date (default: next scheduled payday from the profile) and the
horizon (default 30 days).

## Step 1: Is payroll covered? (cash-flow-snapshot)

Run `cash-flow-snapshot` with the payroll date. Payroll is **two outflows**: net pay
on payday, and CRA source deductions (employee withholdings + employer CPP/EI) by
the 15th of next month. Include both, and any GST/PST remittance in the window.

Say the verdict first, in one line: **covered**, **tight**, or **short by CAD X on
[date]**.

**Gate.** Covered comfortably: ask whether to skip straight to the run. A gap: show
it and wait for "see what we can collect" before Step 2.

## Step 2: Close the gap (invoice-chase)

Mostly Fun Water Pools. Run `invoice-chase` with the gap amount and date. Show
what's realistically collectable **before payday**. A reminder that pays in 45
days doesn't help a Friday payroll, so say so.

Cannabis Cottage rarely has AR. If it's short, the levers are timing (wholesale
order date, bill due dates via `pay-the-bills`) or owner funds. Name them; don't
decide them.

**Gate.** Drafts only until she approves each reminder or a named batch.

## Step 3: Prep the run (payroll-prep)

Run `payroll-prep`. Carry Step 1's cash verdict forward. Don't recompute it.
payroll-prep's gates hold: flags one at a time, then the run approval. The result
is a run sheet and Sage 50 keying sheet that **she** enters and runs.

## Step 4: Recap

In this order: cash verdict, reminders drafted/sent and to whom, projected cash if
they pay, the run (people, hours, gross, pay date, open flags), and the CRA
remittance due date and amount (from her payroll system once run).

Example: "Short CAD 2,100 on the 15th. Three reminders drafted for CAD 5,600, two
likely before payday. Run ready: 6 people, 412 hours, CAD 9,840 gross, one missing
clock-out still open for Sam. CRA remittance due 15 December."

## Never

- Never run or submit payroll.
- Never send a reminder without approval.
- Never forget the CRA remittance in the cash check.
- Never mix the two businesses.
