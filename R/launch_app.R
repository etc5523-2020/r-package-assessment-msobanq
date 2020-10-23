#' Launches the shiny app from this function
#' 
#' The launch_app() function searches the directory provided to access the app.R from the inst folder
#' 
#' The path has been stored in the appDir (app directory)
#' 
#' @export 
#' 
#' @return shiny application object
#' 
#' 
#' 
#' 
#' 
#' 
launch_app <- function() {
  appDir <- system.file( "inst", "app", package = "covidham")
  if (appDir == "") {
    stop("Could not find example directory. Try re-installing `covidham`.", call. = FALSE)
  }
  
  shiny::runApp(appDir, display.mode = "normal")
}