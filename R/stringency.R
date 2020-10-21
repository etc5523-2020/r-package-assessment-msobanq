#' 
#' 
#' 
#' 
#' 
#' 
#' 
#' 
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

ggplotly(p1)}
