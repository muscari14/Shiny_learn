library(shiny)

ui <- fluidPage(
  textInput("name", "What's your name?"),
  textOutput("greeting")
)

# server <- function(input, output, session) {
#   output$greeting <- renderText(paste0("Hello ", input$name))
# }

# server <- function(input, output, session) {
#   greeting <- reactive({paste0("Hello ", input$name)})
#   output$greeting <- renderText(greeting())
# }

server <- function(input, output, session) {
  output$greeting <- renderText({paste("Hello", input$name)})
}

shinyApp(ui, server)
