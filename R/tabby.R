#' 
#' @import DT
#' @export
covid_tabby <- function(input) {datatable(tabby, filter = 'bottom', options = list(
  pageLength = 20, autoWidth = TRUE, dom = 't', initComplete = JS(
    "function(settings, json) {",
    "$(this.api().table().header()).css({'background-color': '#000', 'color': 'white'});",
    "}")
  ))}
