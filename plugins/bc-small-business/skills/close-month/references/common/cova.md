# Cova (Cannabis Cottage's point of sale)

Cova is Cannabis Cottage's point-of-sale and inventory system. There is no Claude
connector for it. Data comes in as **reports she exports from the Cova back office
(Cova Hub / reports area) and uploads**. Fun Water Pools does not use Cova.

## Reports to ask for

Cova report names and menus change between versions. Name the report you want, say
what it's for, and if she can't find it, ask what reports she sees.

| Need | Cova report | What it gives |
|---|---|---|
| Daily takings and tender split | **End of Day** report (per day or date range) | Sales, discounts, returns, taxes collected, cash vs. debit vs. credit totals. |
| Sales for a month | **Sales Summary** report for the date range | Gross sales, discounts, returns, net sales, GST and PST collected. |
| Sales by product / category | Sales by product or category report | Margin and best-sellers; COGS by category if cost is set up. |
| Stock on hand and value | **Inventory On Hand** report (as of month-end) | Units and cost value. Use for the inventory balance check. |
| Shrink, write-offs, adjustments | **Inventory Adjustment** report | Adjustments with reasons. Needed for month-end and compliance. |
| Purchases received | **Purchase Order** report / receiving history | What arrived from the wholesaler, for matching bills. |

Ask for **CSV or Excel** exports for anything Claude will compute from.

## Matching Cova to Sage 50 and the bank (Cannabis Cottage month-end)

Retail sales don't arrive as invoices. They arrive as deposits, so the match is:

1. **Cova net sales and taxes** for the month vs. the **sales and tax accounts** in
   Sage 50. A difference means a day wasn't entered or was entered twice.
2. **Cova card totals** (debit + credit) by day vs. **card processor deposits** on
   the bank statement. Processors deposit **net of fees**, often one or two days
   later, and may batch weekends. Compare net to net (Cova card total minus the
   processor fee = deposit), with a 1 to 3 day window. If she doesn't know the
   processor fee, ask for the processor's monthly statement.
3. **Cova cash totals** vs. **cash deposits** on the bank statement. Cash short/over
   by day is normal in small amounts. Flag days over the threshold, plus any
   deposit that doesn't match a day.
4. **Inventory On Hand value at month-end** vs. the **inventory account** on the
   Sage 50 balance sheet. A gap usually means COGS or inventory adjustments weren't
   journaled. Show the gap and propose the adjusting entry; she decides.

How she gets Cova sales into Sage 50 (daily summary entry, monthly summary entry,
or something else) is her choice. Ask once and add it to the profile.

## Cannabis-specific notes (for awareness, not advice)

- Cannabis Cottage buys product through BC's government wholesaler (the BC
  Liquor Distribution Branch's cannabis wholesale). **Federal cannabis excise duty
  is built into the wholesale price.** The retailer doesn't remit excise duty, but
  it is part of inventory cost, so it shouldn't be coded as a separate expense.
- Retail sales of cannabis carry **5% GST and 7% PST**. Vapour products carry
  **20% PST**. Accessories are generally 7% PST. Cova applies these at the till; the
  month-end check is that what Cova collected equals what's in the Sage 50 tax
  accounts.
- BC licensed retailers have **regulatory reporting to the LCRB** (the Liquor and
  Cannabis Regulation Branch), such as sales and inventory reporting. The deadlines
  and formats are set by the LCRB and change. Don't state them from memory. If she
  asks, point her to her LCRB licensee portal or her compliance contact. Cova can
  usually produce the data.
- Unlike in the US, a Canadian cannabis retailer can deduct normal business
  expenses. Don't import US "280E" thinking.
