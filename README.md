
<!-- README.md is generated from README.Rmd. Please edit that file -->

# elm

<!-- badges: start -->
<!-- badges: end -->

The goal of elm is to provide a file size exploration tool that allows
you to visualize multiple files on your computer in an interactive way
using R. With Elm, you can view your files in a variety of different
ways, including a treemap (by size and file type), other charts, or a
directory tree. Elm makes it easy to gain insights into the files on
your computer, helping you to manage your storage more effectively.

## Installation

You can install the development version of elm like so:

``` r
# install.packages("devtools")
devtools::install_github("parmsam/elm")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(elm)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union
```

You can visualize your folders or files using `elm_treemap_*()`
functions:

``` r
elm_treemap_dir()
elm_treemap_file()
```

Here’s an example of how you can copy your folder or file directory to
your clipboard:

``` r
elm_clip_dir()
#> .
#> ├── R
#> ├── man
#> │   └── figures
#> └── tests
#>     └── testthat
#> Tree copied to clipboard.
#> Files and/or folders in the tree returned.
#> R              man            man/figures    tests          tests/testthat
```

``` r
elm_clip_files()
#> .
#> ├── DESCRIPTION
#> ├── NAMESPACE
#> ├── R
#> │   ├── elm_clip.R
#> │   ├── elm_treemap.R
#> │   ├── get_files.R
#> │   └── get_tree.R
#> ├── README.Rmd
#> ├── README.md
#> ├── elm.Rproj
#> ├── man
#> │   ├── figures
#> │   │   ├── README-pressure-1.png
#> │   │   ├── README-unnamed-chunk-2-1.png
#> │   │   └── README-unnamed-chunk-3-1.png
#> │   └── hello.Rd
#> ├── mtcars.csv
#> └── tests
#>     ├── testthat
#>     │   └── test-elm.R
#>     └── testthat.R
#> Tree copied to clipboard.
#> Files and/or folders in the tree returned.
#> DESCRIPTION
#> NAMESPACE
#> R
#> R/elm_clip.R
#> R/elm_treemap.R
#> R/get_files.R
#> R/get_tree.R
#> README.Rmd
#> README.md
#> elm.Rproj
#> man
#> man/figures
#> man/figures/README-pressure-1.png
#> man/figures/README-unnamed-chunk-2-1.png
#> man/figures/README-unnamed-chunk-3-1.png
#> man/hello.Rd
#> mtcars.csv
#> tests
#> tests/testthat
#> tests/testthat/test-elm.R
#> tests/testthat.R
```
