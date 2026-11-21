---
name: tax-prep
description: 'Tax chain for one business: confirm the Sage 50 books are closed, then prepare GST/PST worksheets, T4A/T5018 lists or the year-end packet. Use for "tax prep", "GST return", "T4As".'
---

# Tax Prep

**Books first, then tax material.** A GST worksheet built on unreconciled books is
a number she might send to the CRA.

Read first: `references/common/ground-rules.md`, `references/common/business-profiles.md`,
`references/common/canada-bc-tax.md`.

**Framing:** every deliverable opens with *"Prepared for review by your accountant.
Not tax advice."* Nothing is filed.

## Step 0: Business and mode

Confirm the business. Infer the mode from what she said and the date (GST
worksheet, PST worksheet, year-end slips list, year-end packet, instalment check;
see `tax-season-organizer`). State it in one line: *"Q3 GST period ended 30
September, so I'll prepare the GST worksheet for July to September. Want something
else?"* Don't run an interview.

If the profile lacks legal structure or GST/PST frequency, ask for that one thing
now. Deadlines depend on it.

## Step 1: Books first (month-end-prep)

Work out the months in scope: the GST/PST period; the calendar year for slips; the
fiscal year for the year-end packet.

For each month:
- **Already closed** (she has a close packet for it, or says so): verify only.
  Ask whether anything was entered or changed in Sage 50 after the close. If not,
  move on: *"July to September were closed and nothing's changed since. Moving to
  the worksheet."*
- **Not closed**: run `month-end-prep` for it. Its sign-off gate holds.
- **Partly closed**: close only the open months.

### Gate before Step 2

Don't prepare anything until the months in scope are settled. If items are open,
say what they do to the number:
> "Eight transactions totalling CAD 3,400 are still in suspense. If they're business purchases with GST, the input tax credits could change by up to CAD 170. Fix them, or tell me to go ahead and I'll list it as an assumption."

If she goes ahead, the assumption goes at the top of the deliverable, not in a footnote.

## Step 2: Tax material (tax-season-organizer)

Run `tax-season-organizer` in the chosen mode using only Step 1's closed figures.
When slips and a GST worksheet are both due (January), do slips first because their
deadline is earlier.

Say where the numbers came from: *"Built on closed books through 30 September."*

## Output

An accountant packet (doc) with: the worksheet or list, the assumptions, open book
items that could move the number, missing payee information, and the deadlines.
Add a draft cover email to the accountant (Zoho draft or text; see
`references/common/zoho-mail.md`), held for her yes.

## After

One next step: "cash forecast" to check the payment clears on its due date.

## Never

- Never prepare tax figures on unclosed books without a stated assumption.
- Never re-close a month that's closed and unchanged.
- Never give tax advice or file anything.
- Never hide an assumption.
