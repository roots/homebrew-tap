# Homebrew Tap for trellis-cli

[![Follow Roots](https://img.shields.io/badge/follow%20@rootswp-1da1f2?logo=twitter&logoColor=ffffff&message=&style=flat-square)](https://twitter.com/rootswp)
[![Sponsor Roots](https://img.shields.io/badge/sponsor%20roots-525ddc?logo=github&style=flat-square&logoColor=ffffff&message=)](https://github.com/sponsors/roots)

Homebrew tap for installing [trellis-cli](https://github.com/roots/trellis-cli).

## Support us

We're dedicated to pushing modern WordPress development forward through our open source projects, and we need your support to keep building. You can support our work by purchasing [Radicle](https://roots.io/radicle/), our recommended WordPress stack, or by [sponsoring us on GitHub](https://github.com/sponsors/roots). Every contribution directly helps us create better tools for the WordPress ecosystem.

## Overview

This repository contains formulas for:

- `roots/tap/trellis-cli`: stable releases from GitHub releases
- `roots/tap/trellis-cli-dev`: development build from the latest `main` branch

## Quick Install (macOS and Linux via Homebrew)

```bash
brew tap roots/tap
brew install roots/tap/trellis-cli
```

## Quick Install (Unstable - macOS and Linux via Homebrew)

```bash
# Cleanup previous stable version (if installed)
brew uninstall roots/tap/trellis-cli

# Install development formula
brew install --HEAD roots/tap/trellis-cli-dev

# Upgrade development formula
brew upgrade --fetch-HEAD roots/tap/trellis-cli-dev
```

## Upgrade Stable

```bash
brew update
brew upgrade roots/tap/trellis-cli
```

## Community

Keep track of development and community news.

- Join us on Discord by [sponsoring us on GitHub](https://github.com/sponsors/roots)
- Join us on [Roots Discourse](https://discourse.roots.io/)
- Follow [@rootswp on Twitter](https://twitter.com/rootswp)
- Follow the [Roots Blog](https://roots.io/blog/)
- Subscribe to the [Roots Newsletter](https://roots.io/subscribe/)
