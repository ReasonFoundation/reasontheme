#' The Reason Foundation [ggplot2] theme
#'
#' \code{set_reason_theme} provides a [ggplot2] theme formatted according to the
#' Reason Foundation style guide.
#'
#' @param style The default theme style. "slide", "web", or "print".
#' @import extrafont
#' @import ggrepel
#' @md
#' @export

set_reason_theme <- function(style = "slide") {

  # set deault theme to theme_reason_*() --------------------------------------

  if (style == "slide") {
    ggplot2::theme_set(theme_reason_slide())
  } else if (style == "web") {
    ggplot2::theme_set(theme_reason_web())
  } else if (style == "print") {
    ggplot2::theme_set(theme_reason_print())
  } else {
    stop('Invalid "style" argument. Valid styles are: ',
         '"slide", "web", and "print".',
         call. = FALSE
    )
  }

  # add Calibri font to text and label geoms ---------------------------

  ggplot2::update_geom_defaults("text", list(family = "Calibri"))
  ggplot2::update_geom_defaults("label", list(family = "Calibri"))
  ggplot2::update_geom_defaults("text_repel", list(family = "Calibri"))
  ggplot2::update_geom_defaults("label_repel", list(family = "Calibri"))

  # set default color scales for continuous variables -----------------------

  options(
    ggplot2.continuous.colour = "gradient",
    ggplot2.continuous.fill = "gradient"
  )

  # set default colors for monochromatic geoms ------------------------------

  ggplot2::update_geom_defaults("bar", list(fill = "#FFFF00"))
  ggplot2::update_geom_defaults("col", list(fill = "#FFFF00"))
  ggplot2::update_geom_defaults("point", list(colour = "#FFFF00"))
  ggplot2::update_geom_defaults("line", list(colour = "#FFFF00"))
  ggplot2::update_geom_defaults("step", list(colour = "#FFFF00"))
  ggplot2::update_geom_defaults("path", list(colour = "#FFFF00"))
  ggplot2::update_geom_defaults("boxplot", list(fill = "#FFFF00"))
  ggplot2::update_geom_defaults("density", list(fill = "#FFFF00"))
  ggplot2::update_geom_defaults("violin", list(fill = "#FFFF00"))

  # set default colors for monochromatic stats ------------------------------

  ggplot2::update_stat_defaults("count", list(fill = "#FFFF00"))
  ggplot2::update_stat_defaults("boxplot", list(fill = "#FFFF00"))
  ggplot2::update_stat_defaults("density", list(fill = "#FFFF00"))
  ggplot2::update_stat_defaults("ydensity", list(fill = "#FFFF00"))

}


#####################################################################
reasonStyle <- function() {
  font <- "Calibri"

  ggplot2::theme(

    plot.caption = ggplot2::element_blank(),
    #This leaves the caption text element empty, because it is set elsewhere in the finalise plot function

    #Legend format
    #This sets the position and alignment of the legend, removes a title and backround for it and sets the requirements for any text within the legend. The legend may often need some more manual tweaking when it comes to its exact position based on the plot coordinates.
    legend.text.align = 0,
    legend.background = ggplot2::element_blank(),
    legend.title = ggplot2::element_blank(),
    legend.key = ggplot2::element_blank(),
    legend.text = ggplot2::element_text(family = font,
      size = 14,
      color = "black"),
    legend.justification = c(1, 1),
    legend.position = c(0.9, 0.25),

    #Axis format
    #This sets the text font, size and colour for the axis text, as well as setting the margins and removes lines and ticks.
    #axis.title.x = ggplot2::element_blank(),
    axis.title = ggplot2::element_text(family = font,
      face = "bold",
      size = 14,
      color = "black"),
    axis.text = ggplot2::element_text(family = font,
      face = "bold",
      size = 14,
      color = "black"),
    axis.text.x = ggplot2::element_text(margin = ggplot2::margin(5, b = 10),
      angle = 90),
    axis.ticks = ggplot2::element_line(color = "black"),
    axis.line = ggplot2::element_line(color = "black"),

    #Grid lines
    #This removes all minor gridlines and adds major y gridlines. In some cases you will want to change this to remove y gridlines and add x gridlines.
    panel.grid.minor = ggplot2::element_blank(),
    # panel.grid.major.y = ggplot2::element_line(color = "#cbcbcb"),
    panel.grid.major.y = ggplot2::element_blank(),
    panel.grid.major.x = ggplot2::element_blank(),

    #Blank background
    #This sets the panel background as blank, removing the standard grey ggplot background colour from the plot
    panel.background = ggplot2::element_blank(),
  )
}
