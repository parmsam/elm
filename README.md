
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
elm_treemap_folders()
elm_treemap_file()
```

Here’s an example of how you can copy your folder or file directory to
your clipboard:

``` r
elm_clip_folders()
#> .
#> ├── R
#> ├── man
#> │   └── figures
#> │       └── hex_old
#> └── tests
#>     └── testthat
#> Tree copied to clipboard.
#> Files and/or folders in the tree returned.
#> R                   man                 man/figures         man/figures/hex_old 
#> tests               tests/testthat
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
#> │   └── figures
#> │       ├── elm.png
#> │       ├── hex-elm.hex
#> │       ├── hex-elm.png
#> │       ├── hex_old
#> │       │   ├── elm.png
#> │       │   ├── hex-elm copy.png
#> │       │   ├── hex-elm.hex
#> │       │   ├── hex-elm.hex copy
#> │       │   ├── hex-elm.png
#> │       │   ├── logo copy.png
#> │       │   └── logo.png
#> │       └── logo.png
#> └── tests
#>     ├── testthat
#>     │   └── test-elm.R
#>     └── testthat.R
#> Tree copied to clipboard.
#> Files and/or folders in the tree returned.
#> DESCRIPTION                          NAMESPACE                            
#> R                                    R/elm_clip.R                         
#> R/elm_treemap.R                      R/get_files.R                        
#> R/get_tree.R                         README.Rmd                           
#> README.md                            elm.Rproj                            
#> man                                  man/figures                          
#> man/figures/elm.png                  man/figures/hex-elm.hex              
#> man/figures/hex-elm.png              man/figures/hex_old                  
#> man/figures/hex_old/elm.png          man/figures/hex_old/hex-elm copy.png 
#> man/figures/hex_old/hex-elm.hex      man/figures/hex_old/hex-elm.hex copy 
#> man/figures/hex_old/hex-elm.png      man/figures/hex_old/logo copy.png    
#> man/figures/hex_old/logo.png         man/figures/logo.png                 
#> tests                                tests/testthat                       
#> tests/testthat/test-elm.R            tests/testthat.R
```
