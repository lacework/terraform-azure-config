# v3.0.0

## Other Changes
* chore(LINK-3266): Upgrade azurerm to V4 (#64) (Lei Jin)([32bad8a](https://github.com/lacework/terraform-azure-config/commit/32bad8a6dabb956c610ffee4a024bd9def8661b0))
* ci: version bump to v2.1.1-dev (Lacework)([777b9ca](https://github.com/lacework/terraform-azure-config/commit/777b9ca1e7cb8c07d5e5ddef9053709afc6f693f))
---
# v2.1.0

## Features
* feat(GROW-2917): add output for lacework integration guid (#61) (Matt Cadorette)([05a8b3d](https://github.com/lacework/terraform-azure-config/commit/05a8b3da4aa3d8b611db5c874b7ae00619b4b803))
## Other Changes
* ci: migrate from codefresh to github actions (#60) (Timothy MacDonald)([63915bc](https://github.com/lacework/terraform-azure-config/commit/63915bc1ac4892e4b0a9be84df230a91e84d2443))
* ci: version bump to v2.0.3-dev (Lacework)([dafcd3d](https://github.com/lacework/terraform-azure-config/commit/dafcd3d7f756b58cc35acb2b62b9da0d67ea83b1))
---
# v2.0.2

## Bug Fixes
* fix: docs links and add wait_time override example (#58) (Dan Daugherty)([f49315f](https://github.com/lacework/terraform-azure-config/commit/f49315f19998287b14bb9a4c12242fc4013ae63a))
## Other Changes
* ci: version bump to v2.0.2-dev (Lacework)([c6423b8](https://github.com/lacework/terraform-azure-config/commit/c6423b8633ea2a433c28958bcfbc4b22c3c9b2f4))
---
# v2.0.1

## Documentation Updates
* docs(readme): add terraform docs automation (#52) (Timothy MacDonald)([e454245](https://github.com/lacework/terraform-azure-config/commit/e4542457da92f23f6d03755afe748156b981fa0f))
## Other Changes
* chore: set local var module name (#56) (Darren)([525154d](https://github.com/lacework/terraform-azure-config/commit/525154dd7e93b382ed16026359e1a3a2635590d8))
* chore: add lacework_metric_module datasource (#55) (Darren)([687b443](https://github.com/lacework/terraform-azure-config/commit/687b443cbcbb1e264685e57b88283ade03643e1d))
* ci: tfsec (jon-stewart)([1cd2eba](https://github.com/lacework/terraform-azure-config/commit/1cd2eba2c3d6730fc07d52266e4e4b91dc52dc16))
* ci: version bump to v2.0.1-dev (Lacework)([29992d6](https://github.com/lacework/terraform-azure-config/commit/29992d6b583b86af149bb8ccef5b576feef31b21))
---
# v2.0.0

## Features
* feat: allow subscription exclusions when `all_subscriptions` is used (Alan Nix)([348786b](https://github.com/lacework/terraform-azure-config/commit/348786ba4ea130f7896e5d10fb2b77c34dcba844))
* feat: added KeyVaultReader role to the Lacework service principal (#43) (Alan Nix)([969fe20](https://github.com/lacework/terraform-azure-config/commit/969fe203730d177da7261214503150b1a7d47c5a))
## Other Changes
* chore: updating `azurerm` to v3 (Alan Nix)([5883945](https://github.com/lacework/terraform-azure-config/commit/58839456398779f5cc3ae3add79539561c68e840))
* ci: version bump to v1.1.2-dev (Lacework)([7238974](https://github.com/lacework/terraform-azure-config/commit/72389740f3aa0188256c3ae62aa7d4d5ce32a60a))
---
# v1.1.1

## Documentation Updates
* docs: update Lacework provider version in readme (#41) (Darren)([fcf9d1c](https://github.com/lacework/terraform-azure-config/commit/fcf9d1ce0623c8145678f829cd0bdf72db78196d))
## Other Changes
* chore: update Lacework provider version to v1 (#40) (Darren)([4472b5a](https://github.com/lacework/terraform-azure-config/commit/4472b5a3655165a29edacff0ff642e8040aa0308))
* ci: version bump to v1.1.1-dev (Lacework)([6820d9f](https://github.com/lacework/terraform-azure-config/commit/6820d9f38820a793caab9dab69d867c1212790d6))
---
# v1.1.0

## Features
* feat: deprecate support for Terraform 0.12 and 0.13 (#37) (Darren)([b19d643](https://github.com/lacework/terraform-azure-config/commit/b19d6434477554b21f892197d6c69bd2ac60fa23))
## Bug Fixes
* fix: only pull enabled subscriptions (#35) (Andre Elizondo)([2a6cde1](https://github.com/lacework/terraform-azure-config/commit/2a6cde1c8bcea1a90f7344f65211d96fab45e4f6))
## Other Changes
* chore: update pull-request-template.md (#36) (Darren)([188ba70](https://github.com/lacework/terraform-azure-config/commit/188ba7037795697a3d7b408c5a83014c1c703c5c))
* ci: version bump to v1.0.1-dev (Lacework)([20ed214](https://github.com/lacework/terraform-azure-config/commit/20ed21491b6c2a9d76cb871d4324aec787b0de7f))
---
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
