library(readr)
library(dplyr)
library(shiny)
library(plotly)
library(DT)
library(shinythemes)

c19 <- read_csv("covid_data.csv")

si <- c19 %>% filter(continent == "Asia") %>% 
    select(location, date, stringency_index) %>% 
    filter(location != "Israel") %>% filter(location != "Armenia") %>% filter(location != "Maldives") %>% 
    na.omit()

interactive <- c19 %>% filter(date > "2020-10-02") %>% 
    filter(continent == "Asia") %>% 
    filter(location != "Israel") %>%
    select(-iso_code, 
           -continent, 
           - date, 
           -new_cases, 
           -new_cases_smoothed, 
           -new_deaths, 
           -new_deaths_smoothed,
           -new_deaths_smoothed_per_million, 
           -new_cases_per_million, 
           -new_cases_smoothed_per_million, 
           -new_deaths_per_million, 
           -new_tests, 
           -new_tests_per_thousand, 
           -new_tests_smoothed, 
           -new_tests_smoothed_per_thousand, 
           -total_tests, 
           -total_tests_per_thousand, 
           -tests_per_case, 
           -positive_rate, 
           -tests_units, 
           -stringency_index)

tabby <- c19 %>% select(continent, 
                        location,
                        date, 
                        total_cases,
                        new_cases, 
                        total_deaths, 
                        new_deaths) %>%
    filter(continent == "Asia") %>% 
    filter(location != "Israel") %>%
    select(-continent) %>% 
    na.omit()




ui <- fluidPage(theme = shinytheme("superhero"),mainPanel(theme = "bootstrap.css",
    tabsetPanel(
        tabPanel("About", tagList(
            h2(style = "color:white;", "This app is based on COVID-19 Data for most Asian countries, 
            Asia being the most densely populated continent and the origin of the pandemic, 
            it is interesting to look into all these countries to investigate how each country
               responded to the pandemic, through the the Stringency Index. Stringency Index is the level of 
               emergency declared and the level of precautions taken by the government to manage the pandemic.
               The plot lets you compare different countries in Asia by picking the countries that 
               you want to explore or compare.
               
               Interact plot helps the user to pick the variables 
               to see a country's standing and make comparisons. The plot is complex
               in terms of multiple variables input to get a better understanding of 
               the country's position, health wise, wealth wise, size wise, etc.
               The table tab takes you to the table, where you can interact with the table and
               find the trend of cases in any asian country. There are Hints given under each plot and table to 
               help the user understand faster." ))),
        
        tabPanel("Stringency Index", tagList(h4(style = "color:white;","The graph shows the 
        Stringency Index of most Asian countries, telling each countries response to the covid-19 pandemic.
                 It is interesting how some countries hit 100 on the Stringency Index in a similar time frame."),plotlyOutput("plot", height = "800"), "*HINT: Select
                                             any country of your choice from the legend by double clicking, and select any other country or countries to make comparisons.
                                             Make it easier by selecting the compare data on hover option from the top right corner.")),
        
        tabPanel("Interact",tagList(h3(style = "color:white;", "The first two variables determine the axies, the third 
                 variable determines the size of the bubble or point."), varSelectInput("variable", "Variable:", interactive, selected = "handwashing_facilities"),
                 varSelectInput("vari", "Variable:", interactive, selected =  "hospital_beds_per_thousand"),
                 varSelectInput("var", "Variable:", interactive, selected = "total_deaths"), 
                 plotlyOutput("plo", height = "500"), "*HINT: Isolate the group of countries you are interested in by selecting
                 them from the legend. Use the varibles as deemed appropriate for comparison from the drop down menues at the top.")), 
        
        tabPanel("Table",tagList(h3(style = "color:white;","The table aids the user to look at a countries Covid-19 cases and
        make inputs to get the appropriate time series data.", dataTableOutput("tabb")), "*HINT: Use the filters at the bottom to select ranges, dates and countries as deemed
                 appropriate by the user.")),
        
        tabPanel("References",tagList(h2(style = "color:white;", "Roser, M., Ritchie, H., Ortiz-Ospina, E., & Hasell, J. (2020).
                                         Coronavirus Pandemic (COVID-19). Retrieved 9 October 2020, from https://ourworldindata.org/coronavirus",))
                                         ,tagList(h2(style = "color:white;",
                 "v1.3.1, r. (2020). readr package | R Documentation. Retrieved 9 October 2020, from https://www.rdocumentation.org/packages/readr/versions/1.3.1",)) 
                 ,tagList(h2(style = "color:white;","v0.7.8, d. (2020). dplyr package | R Documentation. Retrieved 9 October 2020, from https://www.rdocumentation.org/packages/dplyr/versions/0.7.8",))
                 ,tagList(h2(style = "color:white;","Shiny. (2020). Retrieved 9 October 2020, from https://shiny.rstudio.com/",))
                 ,tagList(h2(style = "color:white;","Plotly. (2020). Retrieved 9 October 2020, from https://github.com/plotly/",))
                 ,tagList(h2(style = "color:white;","v0.15, D. (2020). DT package | R Documentation. Retrieved 9 October 2020, from https://www.rdocumentation.org/packages/DT/versions/0.15",))
                             ,tagList(h2(style = "color:white;","Shiny - Themes. (2020). Retrieved 9 October 2020, from https://shiny.rstudio.com/articles/themes.html",))
                                         ,tagList(h2(style = "color:white;","Download RStudio. (2020). Retrieved 9 October 2020, from https://rstudio.com/products/rstudio/download/")))
    )
) )
               
   



# Define server logic required to draw a histogram
server <- function(input, output) {
    
    output$plot <- renderPlotly({ 
       si %>% ggplot(aes(x= date, 
                         y = stringency_index, 
                          color = location)) + 
            geom_line() + ggtitle("Stringency Index of Asian Countries") + scale_color_discrete(name = "Country")
        
    })
    
    output$plo <- renderPlotly({
        interactive %>% ggplot(aes(x = !!input$variable,
                                                           y = !!input$vari, 
                                                           color = location)) + 
            geom_point(aes(size=!!input$var)) })
    
    output$tabb <- renderDataTable(tabby,filter = 'bottom', options = list(
        pageLength = 20, autoWidth = TRUE, dom = 't', initComplete = JS(
            "function(settings, json) {",
            "$(this.api().table().header()).css({'background-color': '#000', 'color': 'white'});",
            "}")
    )  )
}





# Run the application 
shinyApp(ui = ui, server = server)
