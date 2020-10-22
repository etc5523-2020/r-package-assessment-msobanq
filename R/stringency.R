#' 
#' 
#' 
#' @title stringency function creates a plotly plot by calling a part of the app, the plot shows the stringency index of asian countries and plotly allows the user to engage in a variety of ways.
#' 
#' @description The stringency function allows the users to call the plot and use it, as deemed appropriate.
#' 
#' @param input the given input to draw the plot from the app
#' 
#' 
#' 
#' @export 
stringency <- function(input) {p1 <- covid_data %>% filter(continent == "Asia") %>% 
  select(location, date, stringency_index) %>% 
  filter(location != "Israel") %>% filter(location != "Armenia") %>% filter(location != "Maldives") %>% 
  na.omit() %>% mutate(date = as.Date(date))%>% ggplot(aes(x= date, 
                      y = stringency_index, 
                      color = location)) + 
  geom_line() + ggtitle("Stringency Index of Asian Countries") + scale_color_discrete(name = "Country") + 
  scale_x_date(date_labels = "%B")

plotly::ggplotly(p1)}
