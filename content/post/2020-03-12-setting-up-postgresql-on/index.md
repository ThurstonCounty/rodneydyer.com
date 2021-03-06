---
title: 'Setting up Postgresql on mac'
author: ''
date: '2020-03-12'
slug: setting-up-postgresql-on
categories:
  - Database
tags:
  - postgresql
type: ''
subtitle: ''
image:
  placement: 1
  caption: "Postgresql"
  focal_point: "Left"
  preview_only: false
---

This is rather quick and easy to do.  On MacOS, make sure you have Homebrew installed and then follow those instructions.  

For me, it took a few additional steps because I was installing it on a new mac mini (in the home office).  I had not made sure everything was up-to-date before starting so I had to walk away for a little bit to let it all happen.  No biggie.

```
rodney@rodneys-mini ~ % brew install postgis
Error: The following formulae
  [#<Dependency: "python" []>, #<Options: []>] and [#<Dependency: "gcc" []>, #<Options: []>]
cannot be installed as binary packages and must be built from source.
Install the Command Line Tools:
  xcode-select --install
```

So I ran this to install the command line build tools:

```
rodney@rodneys-mini ~ % xcode-select --install
xcode-select: note: install requested for command line developer tools
```

This took several minutes as I had not updated my XCode in a while.  No problem though.  Then I went back and ran the command again, which installed a ton of dependencies.

```
rodney@rodneys-mini ~ % brew install postgis  
==> Installing dependencies for postgis: cfitsio, popt, epsilon, expat, freexl, gdbm, openssl@1.1, readline, sqlite, xz, python, geos, giflib, gmp, isl, mpfr, libmpc, gcc, szip, hdf5, jpeg, jasper, json-c, libxml2, libdap, libtiff, proj, libgeotiff, libpng, libpq, libspatialite, netcdf, openblas, numpy, pcre, freetype, fontconfig, libffi, glib, lzo, pixman, cairo, little-cms2, nspr, nss, openjpeg, qt, poppler, libtool, unixodbc, webp, xerces-c, zstd, gdal, icu4c, krb5, postgresql, protobuf, protobuf-c, boost, eigen, cgal and sfcgal
```

That took a while.

