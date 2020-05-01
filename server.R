library(shiny)
library(leaflet)
library(RColorBrewer)
covid_md <- read.csv("covid_md.csv")

# Define server logic required to plot the map
shinyServer(function(input, output) {
        
        
        
        # Reactive expression for the data subsetted to what the user selected
        filteredData <- reactive({
                covid_md[covid_md$pop >= input$range[1] & covid_md$pop <= input$range[2],]
        })
        
        colorpal <- reactive({
                colorNumeric(palette = "magma", domain = covid_md$pop)
        })
        
        output$map <- renderLeaflet({
                # Use leaflet() here, and only include aspects of the map that
                # won't need to change.
                leaflet(covid_md) %>% addTiles() %>%
                        fitBounds(~min(lng), ~min(lat), ~max(lng), ~max(lat))
        })
        
        # Incremental changes to the map. Each independent set of things that can change
        # should be managed in its own observer.
        observe({
                pal <- colorpal()
                
                leafletProxy("map", data = filteredData()) %>%
                        clearShapes() %>%
                        addCircles(weight = 5, radius = sqrt(covid_md$pop) * 120,
                                   color = ~pal(covid_md$pop), popup = ~paste(covid_md$pop))
                
        })
        
        # Use a separate observer to recreate the legend as needed.
        observe({
                proxy <- leafletProxy("map", data = covid_md)
                
                # Remove any existing legend, and only if the legend is
                # enabled, create a new one.
                proxy %>% clearControls()
                if (input$legend) {
                        pal <- colorpal()
                        proxy %>% addLegend("bottomright", pal= pal, values = covid_md$pop,
                                            title = "No. Confirm Cases COVID - 19", opacity = 1
                        )
                }
        })
})





