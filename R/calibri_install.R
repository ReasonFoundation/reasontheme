#' Import and register Calibri font
#'
#' \code{calibri_install} tests to see if Calibri is imported and registered. If Calibri isn't imported and registered, then \code{calibri_install} imports and registers Calibri with \href{https://github.com/wch/extrafont}{library(extrafont)}.
#'
#' Note: Calibri must be installed on your computer for \code{calibri_install} to work. Calibri is the Reason Foundation's main font and is packaged with Microsoft Office products. - If you have Microsoft Office Installed on the Mac: copy the font file in \code{Applications folder > Microsoft PowerPoint > Contents > Resources > Fonts > Calibri} paste to the desktop and double click to open in FontBook and select: \code{Install Font}
#'
#' Test to see if Calibri is imported and registered with \code{calibri_test()}.
#'
#' @md
#' @export
calibri_install <- function() {
  if (sum(grepl("[Cc]alibri$", extrafont::fonts())) > 0) {
    "Calibri is already imported and registered."
  } else {
    extrafont::font_import()
    extrafont::loadfonts()
    calibri_test()
  }
}