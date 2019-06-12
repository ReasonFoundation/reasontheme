#' Add Reason theme to a ggplot chart
#'
#' This function allows you to add the Reason theme to your ggplot graphics.
#' @export
#' @examples
#' \dontrun{
#' line <- library(ggplot2)
#' ggplot2(line_df, aes(x = year, y = lifeExp)) +
#' geom_line(colour = "#007f7f", size = 1) +
#' geom_hline(yintercept = 0, size = 1, colour="#333333") +
#' reasonStyle()
#' }

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
