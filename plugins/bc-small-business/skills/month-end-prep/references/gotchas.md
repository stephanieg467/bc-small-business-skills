# Month-end gotchas

Each is a pattern that produces a wrong flag or a missed problem.

## Split entries flagged as duplicates
One Sage 50 purchase can be split across accounts (e.g. a supplier bill split
between Inventory and Supplies). Transactions by Account shows one row per account,
with the same date, vendor and source number. **Group rows by source/reference number
first.** Lines of one entry are never duplicates of each other.

## Comparing gross card sales to net deposits
Cova reports card sales gross. The processor deposits gross minus fees, often a
day or more later, and may combine Friday to Sunday into one Monday deposit.
Comparing gross to net shows a "difference" equal to the fee on every line.
Compare **net to net**: (Cova card total − processor fee) vs. deposit, allowing
1 to 3 days and weekend batching. If fees are taken monthly instead of daily, the
daily deposits equal gross and there is one fee withdrawal at month-end. Check the
processor statement.

## Debit and credit batched differently
Some processors deposit debit and credit separately, or on different days. A
"missing" credit deposit may be sitting in the next day's line.

## Refunds and voids treated as missing deposits
A Cova return lowers the day's net sales. A processor refund is a negative line.
Match negatives against returns, not against deposits.

## Cash over/short treated as an error
A few dollars over or short on a cash day is normal. Flag only days over the
threshold she sets (suggest CAD 10 if she has none) or a pattern (same weekday,
same staff shift if she volunteers that).

## Month looks short because of the Sage 50 session date
Sage 50 won't show transactions dated after the session date. A month whose last
week is empty is a data question first. Ask whether the session date was advanced
and whether the last week's entries were keyed.

## Inventory gap from unrecorded COGS
Cannabis Cottage: if Cova tracks cost but Sage 50 only records purchases, the
Inventory account drifts away from Cova's Inventory On Hand value. That's a missing
COGS/inventory adjustment entry, not theft. Show the gap and the proposed journal
entry; she or the accountant decides the method.

## Seasonal month treated as a problem
Fun Water Pools in the off-season will show low sales and normal fixed costs.
Compare to the same month last year before calling a drop alarming.

## Advancing with open flags
The packet goes to the accountant. Hold at the sign-off gate until every flag is
fixed or explicitly skipped. Skipped items go in Action Items, never dropped.

## Recurring charges flagged as duplicates
Weekly or bi-weekly charges (a weekly delivery fee, bi-weekly payroll) can match
within 5 days at month boundaries. Check the vendor's history before flagging.
Repeated **invoice numbers** are the stronger signal.
