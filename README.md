# Small-business skills for Cannabis Cottage and Fun Water Pools

16 skills reworked from Anthropic's small-business plugin for BC, Sage 50 Canada,
Cova and Zoho Mail.

## Install

Needs a paid Claude plan (Pro, Max, Team or Enterprise).

1. In Claude: **Settings → Capabilities**: make sure **code execution / file
   creation** is on (skills need it).
2. **Customize → Plugins → Add → Add marketplace**. Enter `stephanieg467/bc-small-business-skills` (or
   `https://github.com/stephanieg467/bc-small-business-skills`) and click **Done**.
3. Find **bc-small-business** in the plugin list and click **Add**. All 16 skills
   install together.
4. Optional: **Settings → Connectors → Zoho Mail → Connect**.
5. In each business's project, start a chat and say **"get me started"**. That runs
   `smb-onboard`, builds the business profile, and gives her the block to paste into
   the project instructions.

To get updates, open the marketplace in **Customize → Plugins** and click **Check
for updates**, or turn on **Sync automatically**.

### Claude Code (terminal or the desktop app's Code tab)

```
/plugin install bc-small-business --marketplace stephanieg467/bc-small-business-skills
```

On older Claude Code versions, add the marketplace first:

```
/plugin marketplace add stephanieg467/bc-small-business-skills
/plugin install bc-small-business@bc-small-business-skills
```

Auto-update is off by default for third-party marketplaces. To turn it on, run
`/plugin`, open **Marketplaces**, select **bc-small-business-skills** and enable
**Auto-update**.

## The 16 skills

| Say | Skill |
|---|---|
| get me started | smb-onboard |
| reconcile last month | month-end-prep |
| close the month | close-month |
| cash forecast | cash-flow-snapshot |
| code these bills | ap-processor |
| pay the bills | pay-the-bills |
| who owes me money | invoice-chase |
| check the timesheets / run payroll | payroll-prep |
| can I make payroll | plan-payroll |
| tax prep / GST return / T4As | tax-prep |
| books are closed, do the GST worksheet | tax-season-organizer |
| build me a report | report-builder |
| report pack | report-pack |
| go through my email | inbox-manager |
| SEO check | seo-ai-visibility |
| make this a skill | build-agent |

## Good to know

- Sage 50 and Cova have no connector, so the skills ask for exported reports
  (with menu paths) and give back keying sheets to enter in Sage 50.
- Tax and payroll facts were checked in November 2026. The skills tell Claude to
  re-check rates and deadlines before relying on them. Everything tax-related is
  prepared for her accountant, not tax advice.

## Maintaining this marketplace

### Layout

```
bc-small-business-skills/
├── .claude-plugin/marketplace.json        # marketplace catalog (lists the plugin)
├── plugins/
│   └── bc-small-business/
│       ├── .claude-plugin/plugin.json     # plugin manifest; its version is what users get
│       └── skills/<skill>/SKILL.md        # the 16 skills
├── common/                                # shared rules, copied into every skill
└── sync-common.sh                         # copies common/ into each skill's references/common/
```

### Changing shared rules

Edit `common/`, run `./sync-common.sh` to copy it into each skill's
`references/common/`, and commit. Each skill gets its own copy so it stays
self-contained.

### Releasing updates

Installed copies only pick up changes when the plugin's version changes. After
editing skills, bump `version` in
`plugins/bc-small-business/.claude-plugin/plugin.json` (for example 1.0.0 → 1.0.1),
then commit and push.

### Checking before you push

With Claude Code installed, from the repo root:

```bash
claude plugin validate .
```
