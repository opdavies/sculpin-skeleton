# Sculpin Skeleton

A skeleton project for the [Sculpin][1] static site generator.

## Usage

1. Download the project by running `composer create-project opdavies/sculpin-skeleton --stability dev my-sculpin-site`.
1. Run `composer run watch` to generate and serve the site.
1. Start adding content to `source/index.md`.

## Notes

- The `posts` content type is disabled by default. Re-enable it if needed by removing `enabled: false` from `app/config/sculpin_kernel.yml`.

[1]: https://sculpin.io
