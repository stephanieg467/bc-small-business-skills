# Business profiles: which business, and what we know about it

These skills serve **two separate businesses** with one bookkeeper:

| | Cannabis Cottage | Fun Water Pools |
|---|---|---|
| What it is | Licensed non-medical cannabis retail store, BC | Pool business (sales / service / installation), BC |
| Owner | The user (she runs it) | Her husband (she does the books) |
| Point of sale | Cova | Ask (may not use one) |
| Accounting | Sage 50 Canada (desktop) | Sage 50 Canada (desktop), separate company file |
| Email | Zoho Mail | Ask |

## Rule 1: never mix the two businesses

- Work on **one business per conversation**. Figure out which one before you pull
  or read any numbers:
  1. If the conversation is in a Claude project named for one business
     (for example "Sage 50-Cannabis Cottage" or "Sage 50-Fun Water Pools"), that is
     the business. Say so in one line ("Working on Cannabis Cottage's books.").
  2. Otherwise, ask: *"Is this for Cannabis Cottage or Fun Water Pools?"*
- Never add, compare or move a figure across the two unless she asks for a
  side-by-side comparison. If she does, label each column with its business name.
- A file she uploads gets checked against the business: a Sage 50 report shows the
  company name in its header, so check it. If the report header names the other
  business, stop and say so before using it.
- A vendor, customer or employee who appears in both businesses is still two
  separate records.

## Rule 2: read the profile, don't guess it

Each business's profile lives in that **project's instructions** (pasted there by
`smb-onboard`), or in a "Business profile" file in the project's knowledge. Read it
before asking anything. The fields are:

```
## Business profile: <business name>
- Legal name and structure: <e.g. "Cannabis Cottage Ltd." (corporation) / sole proprietor / partnership>
- Province: BC
- Currency: CAD
- Fiscal year end: <day and month>
- GST registration: <yes / no>; filing frequency: <annual / quarterly / monthly>; method: <regular / Quick Method>
- PST registration: <yes / no>; PST filing frequency: <monthly / quarterly / semi-annual / annual>
- Employees: <number, roles>; pay frequency: <weekly / bi-weekly / semi-monthly>
- Payroll done in: <Sage 50 payroll module / other software / by hand / payroll service / no employees>
- WorkSafeBC account: <yes / no>
- Bank account(s) used: <bank name and last four digits only>
- Point of sale / sales source: <Cova / other / invoices from Sage 50>
- Main suppliers: <names>
- Accountant: <firm name>; what they do: <year-end / T2 / T1 / GST / nothing>
- Chart of accounts notes: <anything special, e.g. "COGS split by product category">
- Output preference: <Claude doc/sheet (default) / Excel / PDF / Word>
- Notes: <anything else>
```

If a field is missing when a skill needs it, ask for that field only, in one
question, and offer to add it to the profile ("Want me to add this to the
project instructions so I don't ask again?"). Give her the updated block to paste;
you can't edit the project instructions yourself.

**Never guess a legal structure, a filing frequency or a fiscal year end.** Those
decide tax deadlines. If unknown, say which output depends on it and mark it as an
assumption to confirm with the accountant.

## Who you're talking to

The user is a small business owner learning bookkeeping. She is capable but newer
to accounting terms. So:
- Explain any accounting term the first time it appears, in one short phrase
  ("accounts payable (bills you owe)").
- Give her the exact Sage 50 or Cova menu path when you ask for a file
  (see `sage50-canada.md` and `cova.md`).
- One question at a time when you need several answers.
- When something should go to her accountant, say so plainly. That's good
  practice, not a failure.
