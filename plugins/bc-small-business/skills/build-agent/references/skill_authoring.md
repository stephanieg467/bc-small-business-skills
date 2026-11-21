# Writing a skill for her Claude

## Folder

```
<skill-name>/
├── SKILL.md
└── references/
    ├── common/        (copied from this skill: shared rules and tool notes)
    └── <any extra notes or examples>.md
```

ZIP the **folder itself** (the ZIP's top level is `<skill-name>/`, not the loose files).
The folder name must match the `name` in SKILL.md.

## Frontmatter

```
---
name: friday-cash-report
description: <what it does + when to use it, under 200 characters, no angle brackets>
---
```

- `name`: lowercase letters, numbers and hyphens.
- `description`: **200 characters maximum** (claude.ai's limit). Lead with what it
  does, end with 1 to 2 trigger phrases. Avoid colons followed by quotes, and avoid
  starting with a quote mark, since both can break the YAML.

## Body

1. One-paragraph purpose, including which business(es) it applies to.
2. "Read first:" the common files it relies on.
3. Numbered steps. For each step: what goes in (files with menu paths), what
   happens, what comes out, and any **gate** ("Wait for her yes before ...").
4. Output format (sheet, doc, email draft).
5. "Never" list: the specific ways this task could go wrong.

## Good gates

Show the exact thing being approved (the email text, the total, the rows) **before**
asking. "Okay to send?" about an email she hasn't seen is a rubber stamp, not consent.

## Voice

If the skill drafts anything in her name, point to her voice notes in the project
instructions or knowledge.

## Keep it short

A good routine skill is 40 to 100 lines. Put long tables or examples in `references/`.
