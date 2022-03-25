# List of discrete colours
gameR_colors <- list(blocks =c("#00edef", "#0000ec", "#f19f00", "#f0f100", "#00ee00", "#9f00f0", "#ed0000"),
                     cups = c("#df4418", "#63a0bf", "#ffcf10", "#a6da38", "#7b6aa1"),
                     cyberpunk = c("#faf22b", "#49aeec", "#ff193b", "#000000"),
                     fallout = c("#0068b1", "#fff874", "#27f286"),
                     gris = c("#256484", "#e493a3", "#efa225", "#4a938e"),
                     rayman = c("#945682", "#fcb24c", "#be3b45"),
                     spirit = c("#8fe7fa", "#b41d1f", "#55964b", "#e9bf4c"),
                     splat = c("#F02D7D", "#19D719", "#fffa2f", "#0132fa"),
                     superbros = c("#e3281f", "#3aa534", "#ff5885", "#fbc926", "#511e9d"),
                     wow = c( "#002b5d", "#c6940f", "#9d0004", "#1c1c1c")
                     )

#' Choose a gameR palette
#'
#' @param palette Character name of palette. Either "blocks", cups", "cyberpunk",
#'   "fallout", "gris", "rayman", "spirit", "splat", "superbros", or "wow"
#' @param reverse Logical. Should the palette be reversed? Defaults to FALSE.
#' @export
gameR_cols <- function(palette = NULL, reverse = FALSE) {

  if (is.null(palette)) return (names(gameR_colors))
  if(!(palette %in% names(gameR_colors))){
    stop("palette should be one of the palettes provided by gameR \n")
  }

  pal <- gameR_colors[[palette]]
  if (reverse) pal <- rev(pal)
  pal
}


