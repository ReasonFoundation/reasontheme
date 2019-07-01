#' Test for Calibri import and registration
#'
#' \code{calibri_test} tests to see if Calibri is imported and registered. Calibri is the Reason Foundation's main font.
#'
#' Import and register Calibri in R with calibri_install().
#'
#' @md
#' @export
calibri_test <- function() {
  if (sum(grepl("[Cc]alibri$", extrafont::fonts())) > 0) {
    "Calibri is imported and registered."
  } else {
    "Calibri isn't imported and registered. Install from Microsoft Office Fonts and import and register using calibri_install()."
  }
}
