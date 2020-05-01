

library(shiny)
library(leaflet)
library(RColorBrewer)


shinyUI(bootstrapPage(
        
        
        tags$style(type = "text/css", "html, body {width:100%;height:100%}"),
        leafletOutput("map", width = "100%", height = "100%"),
        absolutePanel(top = 10, right = 10,
                      sliderInput("range","Cases",min(covid_md$pop), max(covid_md$pop),
                                  value = range(covid_md$pop), step = 0.1
                      ),
                      checkboxInput("legend", "Show legend", TRUE),
                        sidebarPanel(p(strong("Documentation:",style="color:magenta"), 
                       a("User Help Page",href="https://rpubs.com/mgarci68/607423")))
        )
        )
)