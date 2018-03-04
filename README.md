# Sculpin Skeleton

A skeleton project for the [Sculpin][1] static site generator.

## Usage

1. Download the project by running `composer create-project opdavies/sculpin-skeleton --no-interaction --no-progress --prefer-dist my-sculpin-site`.
1. Run `cd my-sculpin-site` to change into the project directory, and `composer watch` to generate and serve the site.
1. Start adding content to `source/index.md`.
1. Add more content, settings, layouts, includes etc as needed.

## Scripts

This project includes some custom Composer scripts that you can use rather than running `vendor/bin/sculpin` directly, and that include some additional default options.

These are:

- `composer generate` and `composer dev` - These generate the site in the development mode.
- `composer watch` - Generates and serves the site in development mode, watching for any changes.
- `composer prod` - Generates the site in production mode.

You can still pass additional options by separating the command and options with `--`. For example, running `composer watch -- --port=8002` would run the default watch command but also update the server port:

```
composer watch -- --port=8002
> composer generate -- --server --watch '--port=8002'
> sculpin generate --clean --no-interaction '--server' '--watch' '--port=8002'
Deleting /Users/opdavies/Code/Personal/sculpin-skeleton/output_dev
Detected new or updated files
Generating: 100% (1 sources / 0.00 seconds)
Converting: 100% (1 sources / 0.20 seconds)
Formatting: 100% (1 sources / 0.00 seconds)
Processing completed in 0.27 seconds
Starting Sculpin server for the dev environment with debug true
Development server is running at http://localhost:8002
Quit the server with CONTROL-C.
```

## Notes

- The `posts` content type is disabled by default. Re-enable it if needed by removing `enabled: false` from `app/config/sculpin_kernel.yml`.

[1]: https://sculpin.io
[2]: https://getcomposer.org/doc/06-config.md#process-timeout

## License

[MIT][0]

[0]: https://github.com/opdavies/sculpin-skeleton/blob/master/LICENSE
