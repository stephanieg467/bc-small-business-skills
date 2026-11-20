---
name: smb-onboard
description: 'First-time setup for Cannabis Cottage or Fun Water Pools: business profile, project setup, Zoho Mail, chart of accounts, one real task. Use for "get me started" or "set me up".'
---

# SMB Onboard

Claude as the trainer. In about 20 minutes: a business profile saved where every
skill can read it, the right files in place, one real task done to prove it works,
and a simple routine. **One business per run.** Run it again for the other.

Read first: `references/common/ground-rules.md`, `references/common/business-profiles.md`.

## Step 1: Welcome and check what exists

1. Ask which business we're setting up (or read it from the project name).
2. Look for an existing `## Business profile` in the project instructions or
   knowledge. **If one exists**, show it, ask what's changed, update only those
   fields, and skip to Step 5. Don't re-interview.
3. Check whether the Zoho Mail connector is available. Don't pull any data yet.

## Step 2: One home per business

Recommend one Claude **project per business** (she may already have "Sage 50-Cannabis
Cottage" and "Sage 50-Fun Water Pools"). Explain why in one line: each project keeps
that business's profile, chart of accounts and saved reports together, so nothing
mixes. Marketing and HR projects can stay separate; they can hold a short copy of the
profile too.

## Step 3: The interview (one question at a time)

Ask the questions in `references/onboard-checklist.md`, conversationally, waiting for
each answer. Explain any term she might not know ("fiscal year end: the last day of
your business's financial year, often 31 December"). If she doesn't know an answer,
mark it "ask accountant" and move on. Never guess structure, GST/PST frequency or
fiscal year end.

## Step 4: Save the profile

Show the full profile block (format in `business-profiles.md`) and wait for her yes.
Claude can't edit project settings, so give her the block and the exact steps:
*"Open the project → Instructions (or 'Set project instructions') → paste this at the
top → Save."* Offer the same block as a doc she can keep.

## Step 5: The files every skill needs

Ask her to add to the **project knowledge** (once, reused every time):
- [ ] Sage 50 **Chart of Accounts** report (Report Centre > Financials >
      Chart of Accounts). Used for coding bills.
- [ ] A "**Saved reports**" file (can start empty; `report-builder` adds to it)
- [ ] Two or three emails she sent and liked (for her writing voice)
- [ ] Cannabis Cottage: the list of Cova report names she sees (so skills ask for
      the right ones)

## Step 6: Connect Zoho Mail (optional)

If she wants inbox and reminder help: *Settings → Connectors → find Zoho Mail →
Connect*, and sign in with **her own** Zoho account. Guide; never connect on her behalf.
If the businesses use separate mailboxes, note which is which in the profile.
Everything still works without it (paste emails instead).

## Step 7: One real task now

Pick from her biggest headache (`references/onboard-checklist.md` → "First task"):
- Books feel behind → `month-end-prep` for last month
- Bills piling up → `ap-processor` on this week's bills
- Email overwhelm → `inbox-manager`
- Cash worry → `cash-flow-snapshot`
- Payroll coming → `payroll-prep`

Run it for real. Keep it short and say what it found.

## Step 8: A simple routine

Suggest a rhythm, then follow `ground-rules.md` rule 8 on scheduling:
- **Weekly** (e.g. Monday): "go through my email", "code these bills"
- **Monthly** (first week): "close the month" for each business
- **Each GST/PST period end**: "tax prep"
- **Each payday**: "plan payroll"
- **January to February**: "tax prep" for T4/T4A slips

Offer the list as a one-page doc: **"What to say to Claude"**, with every trigger
phrase in `references/onboard-checklist.md` → "Skills in this set".

## Never

- Never store the profile without showing it first.
- Never overwrite an existing profile silently; show current vs. proposed.
- Never connect a tool for her.
- Never recommend switching software. Work with Sage 50, Cova and Zoho as they are.
