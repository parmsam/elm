
<!-- README.md is generated from README.Rmd. Please edit that file -->

# elm <img src="man/figures/logo.png" align="right" height="139" />

<!-- badges: start -->
<!-- badges: end -->

The goal of elm is to provide a file size exploration tool that allows
you to visualize multiple files on your computer in an interactive way
using R. With elm, you can view your files by size in a variety of
different ways, including a treemap (by size and file type), sunburst
chart, and a directory tree. Elm makes it easy to gain insights into the
files on your computer, helping you to manage your storage more
effectively.

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
#> Registered S3 method overwritten by 'quantmod':
#>   method            from
#>   as.zoo.data.frame zoo
```

## Interactive plots

You can visualize your folders or files as a treemap using the
`elm_treemap_*()` functions:

``` r
elm_treemap_folders()
elm_treemap_files()
```

## Static plots

Alternatively, you can set interactive to FALSE to get static versions
for some of the plots.

``` r
elm_treemap_folders(interactive = FALSE)
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="350px" />

``` r
elm_treemap_files(interactive = FALSE)
```

<img src="man/figures/README-unnamed-chunk-3-2.png" width="350px" />

## Directory tree

Here’s an example of how you can print and copy the folders in your
current directory in a tree-like format using `elm_clip_folders()` (note
that the file size isn’t included here).

``` r
elm_clip_folders()
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

Or you can use `elm_clip_files()` to print and copy the files in your
current directory in a tree-line format (note that the file size isn’t
included here).

``` r
elm_clip_files()
```

## Credits

- Hex icon created using the [hexmake
  app](https://connect.thinkr.fr/hexmake/) from
  [ColinFay](https://github.com/ColinFay/hexmake).
- <a href="https://www.flaticon.com/free-icons/elm" title="elm icons">Elm
  icons created by Icongeek26 - Flaticon</a>
