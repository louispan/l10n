A flexible of allowing localization via typeclass instances.
This has benefits of providing translations in separate files (one file per locale).
This also allow providing translations for new types without chaning existing code, by implementing the typeclass instance where the new types are defined.