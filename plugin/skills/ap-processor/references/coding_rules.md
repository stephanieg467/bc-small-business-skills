# Coding rules

## Order of evidence
1. **This vendor's past coding** in Sage 50 Transactions by Account. Strongest signal.
2. The bill's line descriptions.
3. Her chart of accounts names.
4. Common small-business practice. Lowest weight, always "suggested".

## Tax on the bill
- **GST paid** → the GST Paid / ITC account (not expense). Only claimable with a
  valid invoice. Bills of CAD 100 or more must show the supplier's GST registration
  number (the CRA's information requirements grow with bill size). Missing number → flag.
- **PST paid** → part of the expense or asset cost (PST isn't recoverable). Code it
  with the line, not to a tax account, unless her chart does it differently. Check
  her past entries.
- **No PST charged on a taxable purchase** (e.g. out-of-province supplier,
  software) → list for PST self-assessment (`canada-bc-tax.md`).

## Cannabis Cottage patterns (confirm against her chart)
| Bill | Usual coding |
|---|---|
| BC cannabis wholesale invoice (LDB) | Inventory (or Purchases/COGS, depending on her method). Excise duty is in the price, not a separate expense. |
| Accessories supplier | Inventory, accessories |
| Bags, labels, till rolls | Store supplies |
| Card processor fees | Bank / merchant fees |
| Cova subscription | Software / subscriptions |
| Security monitoring | Security |
| Rent, utilities | Rent; utilities |

## Fun Water Pools patterns (confirm against her chart)
| Bill | Usual coding |
|---|---|
| Pool chemicals, parts for resale | Inventory / COGS |
| Materials for a specific install job | Job materials / COGS (with the job if she tracks jobs) |
| Subcontractors (electrician, excavation) | Subcontract labour / COGS. Track for T5018/T4A. |
| Truck fuel, repairs | Vehicle expenses |
| Equipment over about CAD 1,000 (pump, trailer, tools) | Possibly a fixed asset. Ask. |

## Ask, don't guess
- New vendor
- Inventory vs expense
- Asset vs repair
- Personal vs business (an Amazon order with household items)
- A bill for the **other** business (wrong company's name on it): stop and say so.

## Track services for year-end
Mark vendors who supply **services** (repairs, cleaning, subcontract labour,
bookkeeping, marketing). They feed the T4A / T5018 list in `tax-season-organizer`.
