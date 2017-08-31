
<!-- README.md is generated from README.Rmd. Please edit that file -->
snapsite
========

[![Travis-CI Build Status](https://travis-ci.org/leonawicz/snapsite.svg?branch=master)](https://travis-ci.org/leonawicz/snapsite) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/leonawicz/snapsite?branch=master&svg=true)](https://ci.appveyor.com/project/leonawicz/snapsite) [![Coverage Status](https://img.shields.io/codecov/c/github/leonawicz/snapsite/master.svg)](https://codecov.io/github/leonawicz/snapsite?branch=master)

`snapsite` contains a collection of utility functions for the development, maintenance and refinement of `pkgdown`-derived documentation across multiple SNAPverse packages. The core of the documentation for a SNAPverse package is based around pkgdown, which builds documentation for each package individually. The `snapsite` package assists with thematic tweaks and cohesive, standardized integration across multiple packages in the verse, helping to bring the SNAPverse together. It is not relevant to the SNAPverse outside of this development context. `snapsite` is a satellite package in the verse with `snapmeta` being the only SNAPverse package it is dependent on. It is not required by any other packages.

Installation
------------

You can install snapsite from github with:

``` r
# install.packages('devtools')
devtools::install_github("leonawicz/snapsite")
```

Usage
-----

This package is in early development. Examples are limited. At the moment it includes a function for generating a basic flowchart of the SNAPverse.

``` r
library(snapsite)
verse_diagram(title = "Simplified overview of the SNAPverse")
```

<p style="text-align:center;">
<img src="man/figures/README-simple_verse_chart-1.svg">
</p>