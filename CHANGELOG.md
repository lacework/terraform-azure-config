# v1.0.0

## Refactor
* refactor(v1.0): deprecate Admin Consent in favor of Service Principal (#30) (Marc Garcia)([5337a5d](https://github.com/lacework/terraform-azure-config/commit/5337a5da9594e185d904b7a76615b5f6153f12c2))
* refactor: update examples/ for v1.0 (#31) (Salim Afiune)([49076eb](https://github.com/lacework/terraform-azure-config/commit/49076eb196a7d3043018868eb1e37f13d55b9b7d))
## Bug Fixes
* fix: Avoid 400 Error in upgrade scenario (#33) (Marc Garcia)([b942a4d](https://github.com/lacework/terraform-azure-config/commit/b942a4dafd913af0bf62dac86ac930a57d498b94))
## Other Changes
* style: format *.tf files (#32) (Salim Afiune)([11b0ebf](https://github.com/lacework/terraform-azure-config/commit/11b0ebf34352e907f326ce44ce4fa771421d42ed))
* ci: version bump to v0.2.3-dev (Lacework)([b9e1dfe](https://github.com/lacework/terraform-azure-config/commit/b9e1dfe3eaf9ad3da17355c08afa3945f9b9cf6f))
---
# v0.2.2

## Refactor
* refactor: remove unneeded version pin for azuread (#26) (Marc Garcia)([2ce4d0a](https://github.com/lacework/terraform-azure-config/commit/2ce4d0aee729b9aae924418dd6fbc0745e73eeab))
* refactor: increase wait timer to 20s (#24) (Marc Garcia)([d69568d](https://github.com/lacework/terraform-azure-config/commit/d69568dc53baa4ef8a1677e56e8684a7259140df))
## Documentation Updates
* docs: Add contributing documentation (#23) (Darren)([24ed824](https://github.com/lacework/terraform-azure-config/commit/24ed824f34a18132cf2d6b4a636a8bff2e0c0238))
## Other Changes
* chore: version bump to v0.2.2-dev (Lacework)([6276638](https://github.com/lacework/terraform-azure-config/commit/6276638293f30204f9e45bd731998c198c7d3800))
* ci: sign lacework-releng commits (#20) (Salim Afiune)([beb0de9](https://github.com/lacework/terraform-azure-config/commit/beb0de91fef9ca31c85c761b3b245a61eaf03757))
---
# v0.2.1

## Bug Fixes
* fix(deps): upgrade min azurerm version to ~> 2.28 (Marcos Garcia)([2f3e9d9](https://github.com/lacework/terraform-azure-config/commit/2f3e9d96947d60f8ec38486aeeb8ecc1b3158f69))
## Other Changes
* chore: version bump to v0.2.1-dev (Lacework)([6a2b13f](https://github.com/lacework/terraform-azure-config/commit/6a2b13f1e562d45f0a8196b31b566d0b195cde93))
---
# v0.2.0

## Features
* feat: allow the use of management groups to assign permissions (Alan Nix)([1773af2](https://github.com/lacework/terraform-azure-config/commit/1773af274473378d30f6f939625e4e0d10a75733))
## Bug Fixes
* fix: updating to proper `azuread` provider version (Alan Nix)([e16715e](https://github.com/lacework/terraform-azure-config/commit/e16715e44fd20a1ee3af8467a870db3a1999b5b3))
## Documentation Updates
* docs: updated pessimistic constraint on module version (Alan Nix)([1329bff](https://github.com/lacework/terraform-azure-config/commit/1329bff7d4736926db1bad24ae7213d543d712dc))
## Other Changes
* chore: removing unused 'random' provider and easing 'azurerm' version (Alan Nix)([8560782](https://github.com/lacework/terraform-azure-config/commit/856078213597745f13b27b31a0c2aee71d99866e))
* chore: version bump to v0.1.5-dev (Lacework)([0b42cb3](https://github.com/lacework/terraform-azure-config/commit/0b42cb33812f9ec5e8201d27ddae86d364ad12a4))
---
# v0.1.4

## Other Changes
* chore: pessimistic version pinning on minor releases of dependent modules (#12) (Scott Ford)([9993402](https://github.com/lacework/terraform-azure-config/commit/9993402b3e4fd21906fe54600b2300b0614d2b39))
* chore: bump terraform required version and drop patch version pinning (#11) (Scott Ford)([63b4ea1](https://github.com/lacework/terraform-azure-config/commit/63b4ea19414202a57454440c7722cfced7ec178e))
* ci: fix finding major versions during release (#10) (Salim Afiune)([63e33de](https://github.com/lacework/terraform-azure-config/commit/63e33de5f1db6a1a99b1d6ebaad57239f21f39b9))
* ci: switch PR test from CircleCI to CodeFresh (#9) (Darren)([869a6b7](https://github.com/lacework/terraform-azure-config/commit/869a6b7add4a818a6eeb70bfa9855a7cd32e03ef))
* ci: switch releases to be own by Lacework releng ⚡ (#8) (Salim Afiune)([9c2a945](https://github.com/lacework/terraform-azure-config/commit/9c2a945b288ea06469fc65566a3b02ce74e5b12c))
---
# v0.1.3

## Documentation Updates
* docs: Update all examples with READMEs (#6) (Scott Ford)([0310fb7](https://github.com/lacework/terraform-azure-config/commit/0310fb764ab34466b107b9779fe5c66288bf795e))
## Other Changes
* ci: send slack notifications to team alias ⭐ (#5) (Salim Afiune)([1c59a93](https://github.com/lacework/terraform-azure-config/commit/1c59a93be1cb5b4e11d5c72a5ea63e1e54f2b641))
---
# v0.1.2

## Bug Fixes
* fix: specify correct version constraints (Salim Afiune Maya)([1b1fbba](https://github.com/lacework/terraform-azure-config/commit/1b1fbbab51ef464cb3aa8f60e14933ecaceb8976))
## Other Changes
* chore: update variable descriptions (Salim Afiune Maya)([1211266](https://github.com/lacework/terraform-azure-config/commit/12112664797ce296629fb942a96f505779b2a40f))
* ci: update release notes generation (Salim Afiune Maya)([ab8761d](https://github.com/lacework/terraform-azure-config/commit/ab8761d079fd70a65e860ffe8f94b2819e227985))
---
# v0.1.1

## Bug Fixes
* fix(variables): Updated default for identifier URI (Alan Nix)([c219b3e](https://github.com/lacework/terraform-azure-config/commit/c219b3e9a41e984ae382fb6b7a6a9fbfbfce4009))
## Other Changes
* chore: pinned version using pessimistic constraint (Alan Nix)([c219b3e](https://github.com/lacework/terraform-azure-config/commit/c219b3e9a41e984ae382fb6b7a6a9fbfbfce4009))
* ci: fix scripts (Salim Afiune Maya)([aea2dd6](https://github.com/lacework/terraform-azure-config/commit/aea2dd60940e404166fd2da6785c41680f7b5226))
---
# v0.1.0

🎉 Initial commit
