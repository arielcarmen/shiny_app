library(shiny)
library(shinydashboard)

# Charger les modules
source("pages/home.r")
source("pages/introduction.r")
source("pages/fondamentaux.r")
source("pages/applications.r")
source("pages/donnees.r")

ui <- dashboardPage(
  dashboardHeader(title = "Mon app"),
  
  dashboardSidebar(
    sidebarMenu(
      menuItem("Home", tabName = "home"),
      menuItem("Introduction", tabName = "intro"),
      menuItem("Fondamentaux", tabName = "fondamentaux"),
      menuItem("Traitements", tabName = "traitements"),
      menuItem("Applications", tabName = "applications")
    )
  ),
  
  dashboardBody(
    tabItems(
      tabItem(tabName = "home", uiOutput("content_home")),
      tabItem(tabName = "intro", uiOutput("content_intro")),
      tabItem(tabName = "fondamentaux", uiOutput("content_fondamentaux")),
      tabItem(tabName = "traitements", uiOutput("content_traitements")),
      tabItem(tabName = "applications", uiOutput("content_applications"))
    )
  )
)

# Définition du serveur
server <- function(input, output, session) {
  output$content_home <- renderUI({
    home_ui()
  })
  
  output$content_intro <- renderUI({
    introduction_ui()
  })
  
  output$content_fondamentaux <- renderUI({
    fondamentaux_ui()
  })
  
  output$content_traitements <- renderUI({
    donnees_ui()
  })
  
  output$content_applications <- renderUI({
    applications_ui()
  })
}

# Lancement de l'application
shinyApp(ui = ui, server = server)

runApp("my_app")