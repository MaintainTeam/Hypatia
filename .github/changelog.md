In this release we did some major updates to the database handling in the app, including upgrading the architecture, adding easier database source switching and better error handling.

## Features
- Added the ability to switch database sources between our Codeberg source, a GitHub mirror and a high-quality third-party database.
- Improved the error messages when downloading and validating databases.

## Bug Fixes
- Fixed a NullPointerException when using link scanning.
- Stopped the app from opening up on boot to show you an error message
- Switched to using the GitHub mirror by default for database updates, as the Codeberg server has been unreliable.

## Development Updates
- Refactored the entire database loading code, removing many potential bugs and bringing the codebase closer to modern Android.
- Updated our build scripts to use version catalogs.
- Migrated most remaining Java code to idiomatic Kotlin.
- Updated various dependencies.
- Updated translations.

## Database Updates
- Added the targeted threats database (https://github.com/MaintainTeam/HypatiaDatabases/commit/589362f45146a3d86be2507e0c5e25d36fb0fc56)
- Added some Indicators of Compromise relating to Covid-19 (https://github.com/MaintainTeam/HypatiaDatabases/commit/1d1a210bae8908802e5912342b59e60cb5b3e54a)
