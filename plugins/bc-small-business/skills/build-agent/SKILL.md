---
name: build-agent
description: Turn a task she repeats by hand into a new reusable skill with approval steps, tested on a real case and zipped for upload. Use for "make this a skill" or "I do this every week".
---

# Build Agent

Turns a routine she repeats ("every Friday I total the Cova cash-outs and email
them to Dave") into a named skill she can trigger by name. This is how her
businesses get workflows nobody built for them.

Read first: `references/common/ground-rules.md`, `references/skill_authoring.md`.

## Step 1: Watch it or hear it

Either she does it once in the chat (uploads the files, says each step), or she
describes it. Capture: what triggers it, what files or emails go in, each step,
what comes out, who receives it. Questions to ask: `references/capture.md`.

## Step 2: What varies, what stays fixed

- **Varies each run**: dates, amounts, which business, the files.
- **Fixed**: the steps, report names, where the result goes, the format.
Things that vary become questions the skill asks (or reads from the profile); fixed
things are written into the skill.

## Step 3: Find the approval gates

Every point where something **leaves** (an email sent, a file shared), **changes the
books** (a keying sheet she'll enter) or **moves money** gets an explicit "wait for
her yes" in the skill. Reading and calculating need no gate.

## Step 4: Write it

Follow `references/skill_authoring.md`:
- a short lowercase-hyphen name (e.g. `friday-cash-report`)
- a description **under 200 characters** saying what it does and the phrases that
  trigger it
- steps in order, the files to ask for with menu paths, the output format, the gates
- point to the same common rules as the other skills (business profiles, ground
  rules, Sage 50/Cova/Zoho notes): copy the `references/common/` folder from this
  skill into the new one

## Step 5: Test on a real case

Run the draft skill's steps on this week's real files, in the chat, before she
relies on it. Fix what was confusing. Show her the output and ask: "Is this what
you'd have produced?"

## Step 6: Package it

Produce the skill folder (`<name>/SKILL.md` plus `references/`) as a **ZIP** with the
folder at the top level, and tell her: *"Customize → Skills → + → Create skill →
Upload a skill → choose this ZIP."* If her Claude offers to save a skill directly
from the chat, that works too.

## Step 7: Cadence, honestly

If she wants it weekly, follow `ground-rules.md` rule 8. Without a scheduled task,
the routine is her saying the trigger phrase.

## Never

- Never build a skill that sends, pays or files without a gate.
- Never put passwords, SINs or account numbers into a skill.
- Never claim a skill will run on its own when nothing schedules it.
