
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
[![CRAN RStudio mirror
downloads](https://cranlogs.r-pkg.org/badges/grand-total/gameR?color=green)](https://r-pkg.org/pkg/gameR)
<!-- badges: end -->

gameR provides a collection of R colour palettes inspired by video
games.

**Note**: these colour palettes may *not* be colour blind friendly. If
accessibility is a priority, I recommend either using the [virdis
package](https://CRAN.R-project.org/package=viridis) or checking your
plots before sharing using tools which simulate colour blindness such as
[coblis](https://www.color-blindness.com/coblis-color-blindness-simulator/)

**Table of Contents**

-   [Installation](#installation)
-   [Getting started](#getting-started)
-   [Palettes](#palettes)
-   [Contributing new palettes](#contributing-new-palettes)

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

The development version of gameR may include additional palettes,
however breaking changes may be implemented before the CRAN release of
these palettes.

## Getting started

``` r
library(gameR)
library(ggplot2)
```

gameR provides either discrete colour palettes or continuous palettes
generated by interpolating a discrete palette. Discrete palettes and
continuous palettes are provided via the `gameR_cols()` and
`gameR_cont()` functions respectively with the name of the palette
passed as an argument. For a full list of the palettes provided by
`gameR`, call one of these functions without any arguments.

``` r
gameR_cols()
#>  [1] "blocks"    "cowboy"    "cups"      "cyberpunk" "fallout"   "gris"     
#>  [7] "ocarina"   "p4g"       "rayman"    "spirit"    "splat"     "superbros"
#> [13] "wow"
```

## Palettes

This section presents a list of the palettes provided by gameR ordered
alphabetically by the name of the game which inspired the palette.

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

### Legend of Zelda: Ocarina of Time

``` r
gameR_cols("ocarina")
```

<img src="man/figures/README-unnamed-chunk-9-1.png" width="100%" />

### Persona 4 Golden

``` r
gameR_cols("p4g")
```

<img src="man/figures/README-unnamed-chunk-10-1.png" width="100%" />

### Rayman

``` r
gameR_cols("rayman")
```

<img src="man/figures/README-unnamed-chunk-11-1.png" width="100%" />

### Red Dead Redemption II

``` r
gameR_cols("cowboy")
```

<img src="man/figures/README-unnamed-chunk-12-1.png" width="100%" />

### Spiritfarer

``` r
gameR_cols("spirit")
```

<img src="man/figures/README-unnamed-chunk-13-1.png" width="100%" />

### Splatoon

``` r
gameR_cols("splat")
```

<img src="man/figures/README-unnamed-chunk-14-1.png" width="100%" />

### Super Mario Bros

``` r
gameR_cols("superbros")
```

<img src="man/figures/README-unnamed-chunk-15-1.png" width="100%" />

### Tetris

``` r
gameR_cols("blocks")
```

<img src="man/figures/README-unnamed-chunk-16-1.png" width="100%" />

### World of Warcraft

``` r
gameR_cols("wow")
```

<img src="man/figures/README-unnamed-chunk-17-1.png" width="100%" />

## Contributing new palettes

Contributions via pull requests are welcome! I would love to have as
many video games represented as possible. With that said, there are two
requirements I ask of any contributed palettes:

1.  The palette must be at least somewhat distinctive. There are many
    popular and beloved games, but if the palette suggestion does not
    evoke the video game that inspired it, it probably should not be
    contributed.
2.  Please avoid trademarked names for palette names. I am not entirely
    sure how far the [CRAN
    policy](https://cran.r-project.org/web/packages/policies.html)
    extends when it comes to trademarked names but I would rather not
    risk running afoul of CRAN policy.

### Adding a New Palette to the gameR Palette List

Adding a new palette is as simple adding a new element to the
`gameR_colors` list in
[R/palettes.R](https://github.com/nathansam/gameR/blob/main/R/palettes.R),
and calling `devtools::document()` from R to update the package
documentation.

### Updating the README

The readme is generated by
[README.Rmd](https://github.com/nathansam/gameR/blob/main/README.Rmd).
Please update this file with the palettes you are contributing (the
palettes are in alphabetical order) and knit the file before committing
and pushing your contributions.

### Credit

If you are contributing palette(s), I would love for your contribution
to be recognised. Please feel free to add yourself as a contributor
(role = “ctb”) in the
[DESCRIPTION](https://github.com/nathansam/gameR/blob/main/DESCRIPTION)
file.
