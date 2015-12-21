# sculpin-minimal

A minimal installation of [Sculpin](http://sculpin.io).

## Build

If this is a fresh download, or you don’t have a `vendor` directory, use [Composer](https://getcomposer.org) to download the dependencies.

    composer install

Once everything is downloaded, use the `sculpin` command to generate the site.

    ./vendor/bin/sculpin generate --watch --server

The site is now accessible at http://localhost:8000/.
