
<!-- README.md is generated from README.Rmd. Please edit that file -->

# gameR <img src="man/figures/sticker.png" align="right" width="150"/>

<!-- badges: start -->

[![R-CMD-check](https://github.com/nathansam/gameR/workflows/R-CMD-check/badge.svg)](https://github.com/nathansam/gameR/actions)
[![codecov](https://codecov.io/gh/nathansam/gameR/branch/main/graph/badge.svg?token=lb83myWBXt)](https://app.codecov.io/gh/nathansam/gameR)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/gameR)](https://cran.r-project.org/package=gameR)
![Top
language](https://img.shields.io/github/languages/top/nathansam/gameR)
[![License:
GPL-3](https://img.shields.io/badge/License-GPL3-green.svg)](https://opensource.org/licenses/GPL-3.0)
<!-- badges: end -->

gameR provides a collection of R colour palettes inspired by video
games. Note: these colour palettes may not be colour blind friendly.

## Installation

gameR is on CRAN! Install the stable version of gameR with:

``` r
install.packages("gameR")
```

You can install the development version of gameR from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
remotes::install_github("nathansam/gameR")
```

## Getting started

``` r
library(gameR)
library(ggplot2)
```

At present, paintR only supports discrete colour palettes. These
palettes are provided via the `paintR_cols()` function with the name of
the palette passed as an argument. For a full list of the palettes
provided by `gameR`, call `gameR_cols()` without any arguments.

``` r
gameR_cols()
#> [1] "cups"      "cyberpunk" "fallout"   "gris"      "rayman"    "spirit"   
#> [7] "splat"     "superbros" "wow"
```

## Palettes

This section presents a list of the palettes provided by gameR via the
name of the game which has inspired the palette.

### Cuphead

``` r
gameR_cols("cups")
```

<img src="man/figures/README-unnamed-chunk-5-1.png" width="100%" />

### Cyberpunk

``` r
gameR_cols("cyberpunk")
```

<img src="man/figures/README-unnamed-chunk-6-1.png" width="100%" />

### Fallout

``` r
gameR_cols("fallout")
```

<img src="man/figures/README-unnamed-chunk-7-1.png" width="100%" />

### Gris

``` r
gameR_cols("gris")
```

<img src="man/figures/README-unnamed-chunk-8-1.png" width="100%" />

### Rayman

``` r
gameR_cols("rayman")
```

<img src="man/figures/README-unnamed-chunk-9-1.png" width="100%" />

### Spiritfarer

``` r
gameR_cols("spirit")
```

<img src="man/figures/README-unnamed-chunk-10-1.png" width="100%" />

### Splatoon

``` r
gameR_cols("splat")
```

<img src="man/figures/README-unnamed-chunk-11-1.png" width="100%" />

### Super Mario Bros

``` r
gameR_cols("superbros")
```

<img src="man/figures/README-unnamed-chunk-12-1.png" width="100%" />

### World of Warcraft

``` r
gameR_cols("wow")
```

<img src="man/figures/README-unnamed-chunk-13-1.png" width="100%" />
