I've created a GitHub Actions workflow that:

1. Triggers on push to master — runs automatically when
   you commit to master
2. Runs `make` — builds your project and creates the
   release folder/archives
3. Reads `VERSION` — extracts the version from your
   `VERSION` file
4. Creates a release — uses `gh release create` to post
   a pre-release on GitHub with all archives from the
   `release/` directory
5. Runs `make clean` — clears the release directory
   when done.

The workflow will tag the release as `v{VERSION}`
(e.g., `v1.0.0` if `VERSION` contains `1.0.0`).

A few things to note:
- The workflow requires write permissions to contents —
  this is configured via the `permissions` section
- Archives are uploaded as-is from `release/*`
- The `--prerelease` flag marks it as a release
  candidate; remove that flag if you want full releases
- `--generate-notes` auto-generates release notes from
  commits; remove it if you prefer manual notes
