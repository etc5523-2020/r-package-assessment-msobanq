#' 
#' 
#' @export launch_app
#' 
#' @return shiny application object
#' 
#' 
#' 
#' @import shiny
#' 
#' 
launch_app <- function() {
  appDir <- system.file( "inst", "app", package = "covidham")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `covidham`.", call. = FALSE)
  }
  
  shiny::runApp(appDir, display.mode = "normal")
}