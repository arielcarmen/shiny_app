library(shiny)

source("pages/home.r")
source("pages/introduction.r")
source("pages/fondamentaux.r")
source("pages/applications.r")
source("pages/donnees.r")

ui <- fluidPage(
  titlePanel("Mon application"),
  
  sidebarLayout(
    sidebarPanel( style = "max-height: 100%",
      column(width = 12, actionLink("home", "Home")),
      column(width = 12, actionLink("intro", "Introduction")),
      column(width = 12, actionLink("fondamentaux", "Fondamentaux")),
      column(width = 12, actionLink("traitements", "Traitements")),
      column(width = 12, actionLink("applications", "Applications")),
      
    ),
    
    mainPanel(
      uiOutput("content")
    )
  )
)


server <- function(input, output, session) {
  observeEvent(input$home, {
    output$content <- renderUI({
      home_ui()
    })
  })
  
  observeEvent(input$intro, {
    output$content <- renderUI({
      introduction_ui()
    })
  })
  
  observeEvent(input$fondamentaux, {
    output$content <- renderUI({
      fondamentaux_ui()
    })
  })
  
  observeEvent(input$traitements, {
    output$content <- renderUI({
      donnees_ui()
    })
  })

  observeEvent(input$applications, {
    output$content <- renderUI({
      applications_ui()
    })
  })
}

shinyApp(ui = ui, server = server)

runApp("my_app")