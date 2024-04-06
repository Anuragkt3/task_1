library(shiny)

# Define UI for application
ui <- fluidPage(
  titlePanel("Hello World"),
  sidebarLayout(
    sidebarPanel(
      # You can add inputs or controls here if needed
    ),
    mainPanel(
      textOutput("hello_text")
    )
  )
)

# Define server logic
server <- function(input, output) {
  output$hello_text <- renderText({
    "Hello, World!"
  })
}

# Run the application
shinyApp(ui = ui, server = server)
