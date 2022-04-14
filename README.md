UMTS Roadeo results archive
===========================

This repository contains an archive of the results from the annual UMass
Transit Safety Roadeo. It is served via GitHub Pages at
https://results.umasstransit.rodeo

Adding a year
-------------

```
rake new         # Adds a directory for this year
rake 'new[2001]' # Adds a directory for 2001
```

Generating the archive
----------------------

Within the [umasstransit.rodeo][umtsr] app, run

```
rake roadeo:archive
```

Take everything from the `archive/` directory there and drop it into your new
year directory in this repository.

Then run

```
rake index
```

in this repository to rebuild the `index.html`.

Preview
-------

```
rackup
```

will launch a static web server. Check it out at http://localhost:9292/


Publish
-------

Just commit and push.

[umtsr]: https://github.com/umts/umasstransit.rodeo/
