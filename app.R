library(shiny)
library(shinydashboard)

ui <- dashboardPage(
    dashboardHeader(title = "Hello World!!"),
    dashboardSidebar(),
    dashboardBody(
        textOutput("text")
    )
)

server <- function(input, output) {
    output$text <- renderText(Sys.getenv("TESTE1"))
}

shinyApp(ui, server)