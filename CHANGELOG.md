## [v2.0.0] - 2019-02-13
- Permanently removed the hashes from lib/Date/Names.pm6
  so the original direct hash access syntax has changed
  (for the better IMHO).
- Changed defaults for the class to English and full names.

## [v1.1.0] - 2019-02-12
- Change description in META6.json file.
- Merged PRs from @moritz (German three-letter abbreviaitons, Norwegian).
- Merged PR from @sena_kun (AKA @Altai-man) (Russian).
- French data from @lucs.
- Merged PR from @lizmat (Dutch)
- Started a class (Date::Names) to handle the names, with a lited set
  of working tests for now.
- Updated README.
- Split hashes into separate modules to facilitate the new class.

## [v1.0.3] - 2019-02-10
- Move version number to top of META6.json file.
- Make tests more efficient and easier to modify.
- Add export to @lang variable.
- Add 'en' to @lang variable.
- Add another PR suggestion for the README.md.

## [v1.0.2] - 2019-02-10
- Fix typos.

## [v1.0.1] - 2019-02-10
- Changed abbreviation hash name format, e.g,
  '%mon-abbrev2' was changed to '%mon2'.
- Added a @lang variable to list ISO two-letter language
  codes for languages currently considered in this
  module.
- Added new tests.
- Renamed one test for clarity.
- Added this log.

## [v1.0.0] - 2019-02-09
- Initial release.
