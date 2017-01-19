[![Hackage](https://img.shields.io/hackage/v/l10n.svg)](https://hackage.haskell.org/package/l10n)
[![Build Status](https://secure.travis-ci.org/louispan/l10n.png?branch=master)](http://travis-ci.org/louispan/l10n)

A flexible of allowing localization via typeclass instances.
This has benefits of providing translations in separate files (one file per locale).
This also allow providing translations for new types without chaning existing code, by implementing the typeclass instance where the new types are defined.