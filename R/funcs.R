#' Choose a gameR palette
#' @param palette Character name of palette. Either
#'   `r paste(names(gameR_colors), sep="", collapse=", ")`
#' @param reverse Logical. Should the palette be reversed? Defaults to FALSE.
#' @return Vector containing a hex colour code representation for the chosen
#'   palette
#' @export
gameR_cols <- function(palette = NULL, reverse = FALSE) {
  if (is.null(palette)) {
    return(names(gameR_colors))
  }
  if (!(palette %in% names(gameR_colors))) {
    stop("palette should be one of the palettes provided by gameR \n")
  }

  pal <- gameR_colors[[palette]]
  if (reverse) pal <- rev(pal)
  pal
}

#' Generate continuous palette from a discrete gameR palette
#' @importFrom grDevices colorRampPalette
#' @inheritParams gameR_cols
#' @param n Number of colours to be generated
#' @param bias Passed to \link{colorRamp}. A positive number. Higher values
#'   give more widely spaced colors at the high end.
#' @param interpolate Passed to \link{colorRamp}. Use spline or linear
#'   interpolation
#' @return Vector containing a hex colour code representation for the chosen
#'   palette interpolated across \code{n} values
#' @export
gameR_cont <- function(n,
                       palette = NULL,
                       reverse = FALSE,
                       bias = NULL,
                       interpolate = "spline") {
  if (is.character(n)) stop("n should be of type numeric\n")
  if (is.null(n) | is.na(n) | n %% 1 != 0 | n < 1) {
    stop("n should be a positive integer\n")
  }

  pal <- gameR_cols(palette = palette, reverse = reverse)

  if (is.null(bias)) {
    bias <- 1 / length(pal)
  }

  colfunc <- colorRampPalette(pal,
    interpolate = interpolate,
    bias = bias
  )
  colfunc(n)
}
