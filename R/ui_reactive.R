#' 
#' @title interact is a function which allows the user to manipulate the bubble chart with the desired variables.  
#' 
#' @description The interact function helps the users to choose variables from the data set. 
#' 
#' @param inputId is the selected ID decided by the user so that it makes easier in plottling data especially in ggplots. 
#' @param label, to label the data set as deemed appropriate my the user for the purpose intended.
#' @param data, the data set being used or required to make the data set. 
#' @param selected to choose a desired variable before the user has a chance to manipulate the plot
#' 
#' @export 
interact <- function(inputId, label, data, selected) {varSelectInput(inputId ,
                                            label , 
                                            data, 
                                            selected )}


