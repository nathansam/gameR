# Generate continuous palette from a discrete gameR palette

Generate continuous palette from a discrete gameR palette

## Usage

``` r
gameR_cont(
  n,
  palette = NULL,
  reverse = FALSE,
  bias = NULL,
  interpolate = "spline"
)
```

## Arguments

- n:

  Number of colors to be generated

- palette:

  Character name of palette. Either banjo, blocks, border, cowboy, cups,
  cyberpunk, fallout, frisk, gris, human_rev, kirby, new_horizon,
  ocarina, okami, p3r, p4g, papyrus, pman, radio, rayman, sans, sonic,
  spirit, splat, superbros, wow

- reverse:

  Logical. Should the palette be reversed? Defaults to FALSE.

- bias:

  Passed to [colorRamp](https://rdrr.io/r/grDevices/colorRamp.html). A
  positive number. Higher values give more widely spaced colors at the
  high end.

- interpolate:

  Passed to [colorRamp](https://rdrr.io/r/grDevices/colorRamp.html). Use
  spline or linear interpolation

## Value

Vector containing a hex color code representation for the chosen palette
interpolated across `n` values
