#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
rhtmlSlowWidget <- function(time_to_display_s, width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x = list(
    time_to_display_s = time_to_display_s
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'rhtmlSlowWidget',
    x,
    width = width,
    height = height,
    package = 'rhtmlSlowWidget',
    elementId = elementId
  )
}
