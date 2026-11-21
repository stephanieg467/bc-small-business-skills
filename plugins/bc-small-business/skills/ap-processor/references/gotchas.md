# AP gotchas: the ways a bill gets paid twice, or wrong

- **Same bill, three copies**: email PDF, portal reminder, statement line. Dedupe on
  vendor + invoice number; then on amount + date within 5 days.
- **Already in Sage 50**: a bill she entered last week arrives again by email.
  Check Vendor Aged Detail before coding.
- **Statement treated as a bill**: a vendor statement lists invoices; it isn't a
  new invoice. Use it only to check for missing bills.
- **Credit memo ignored**: a credit sitting in Vendor Aged Detail means the vendor
  total isn't what's owed. Show it separately.
- **Bank detail change email**: the classic fraud. Hold it, quote it, and tell
  her to verify by calling a number she already has.
- **Lookalike sender**: `invoices@poolsupp1y.ca` vs `poolsupply.ca`. Compare
  character by character.
- **Wrong business**: a supplier that serves both businesses sends a bill addressed
  to the other one. Check the "bill to" name.
- **GST that isn't 5%**: mixed taxable/exempt lines, or an error. Ask.
- **Photographed totals**: blurry digits. Unreadable is "unreadable", not a guess.
- **Recurring bills paid on autopilot**: recurrence isn't approval. Each run needs a yes.
