
<!-- README.md is generated from README.Rmd. Please edit that file -->

# elm <img src="man/figures/logo.png" align="right" height="139" />

<!-- badges: start -->
<!-- badges: end -->

Elm is a disk usage analyzer tool that allows you to visualize files on your computer in an interactive or static way. With elm, you can view your file
with a variety of different information, including name, size, type, and
relation. Elm makes it easy to gain insights into the files on your
computer, helping you to manage your storage more effectively.

## Installation

You can install the development version of elm like so:

``` r
# install.packages("devtools")
devtools::install_github("parmsam/elm")
```

## Examples

``` r
library(elm)
#> Registered S3 method overwritten by 'quantmod':
#>   method            from
#>   as.zoo.data.frame zoo
```

## RStudio addins

After installing the package, you will see RStudio addins to generate
file visualizations for your current working directory.

## Interactive plots

You can interactively explore your disk usage using
`elm_sunburst_files()`. Disk usages is displayed in bytes. Note that
plots in this package may be slow to load or fail to load if there are a
lot of child nodes in the file tree. If that happens, I’d recommend
changing the working directory or folder path in the path argument.

``` r
elm_sunburst_files(path = ".") #recursive look at all files in current path
```

Alternatively, you can visualize your folders or files as a treemap
using the `elm_treemap_*()` function. By default the
`interactive = TRUE` and `path="."`. You can use `?elm_treemap_files()`
to learn more.

``` r
elm_treemap_files(path = ".") #recursive look at all files in current path
```

<!-- # elm_treemap_folders(path = ".") #same with folders only instead -->

## Static plots

Alternatively, you can set interactive to FALSE to get static versions
for some plots.

``` r
elm_treemap_files(interactive = FALSE)
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="350px" />

## Folders or files tree

Here’s an example of how you can print and copy the folders in your
current directory in a tree-like format using `elm_clip_folders()` (note
that the file size isn’t included here). Note that this is just a
wrapper to `fs::dir_tree()` with a capture content and clipboard copy
via `clipr::write_clip()`.

``` r
elm_clip_folders()
#> .
#> ├── R
#> ├── inst
#> │   └── rstudio
#> ├── man
#> │   └── figures
#> └── tests
#>     └── testthat
#> Tree copied to clipboard.
#> Files and/or folders in the tree returned.
#> R              inst           inst/rstudio   man            man/figures    
#> tests          tests/testthat
```

Or you can use `elm_clip_files()` to print and copy the files in your
current directory in a tree-line format (note that the file size isn’t
included here). Note that this is just a wrapper to `fs::dir_tree()`
with a capture content and clipboard copy via `clipr::write_clip()`.

``` r
elm_clip_files()
```

## Credits

- Hex icon created using the [hexmake
  app](https://connect.thinkr.fr/hexmake/) from
  [ColinFay](https://github.com/ColinFay/hexmake).
- <a href="https://www.flaticon.com/free-icons/elm" title="elm icons">Elm
  icons created by Icongeek26 - Flaticon</a>

## Contributing

Are you interested in learning how you can contribute to this package?
Head over to the [contributor guide](CONTRIBUTING.md).

## Code of Conduct

Please note that the elm project is released with a [Contributor Code of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
