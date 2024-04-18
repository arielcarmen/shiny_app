library(shiny)

home_ui <- function() {
  fluidPage(
    img(src = "shiny.png", height = 72, width = 72),
    
    tabsetPanel(
        tabPanel("Description",
          p("
            Streamlit est un framework open source en Python conçu pour simplifier le processus de création d'applications web interactives destinées à l'analyse et à la visualisation de données.
          "),
          p("
          Il offre une expérience de développement rapide en permettant aux utilisateurs de transformer leurs scripts Python en applications web avec quelques lignes de code."),
          p("
          Streamlit se distingue par sa simplicité d'utilisation et son orientation vers les développeurs et les data scientists, éliminant la complexité inhérente au développement web traditionnel.
        "),
        p("
          Il prend en charge la création de tableaux de bord interactifs, la visualisation de données, l'intégration de widgets interactifs et offre une expérience utilisateur fluide.
        "),
        p("Streamlit est devenu populaire dans le domaine de la science des données pour sa facilité d'apprentissage, son efficacité et sa capacité à accélérer le déploiement d'applications web basées sur Python.        
        ")
          ),
        tabPanel("Avantages",

        p("
        Streamlit présente plusieurs avantages qui ont contribué à sa popularité croissante, notamment dans le domaine de la science des données et du développement d'applications web interactives. Voici quelques-uns des avantages clés de Streamlit :"),
        tags$ol(
            tags$li("Simplicité d'utilisation : Streamlit est conçu pour être facile à apprendre et à utiliser. Les développeurs, même ceux qui ne sont pas spécialisés dans le développement web, peuvent rapidement créer des applications interactives avec quelques lignes de code."), 
            tags$li("Développement Rapide : Le processus de développement est rapide, car les développeurs peuvent se concentrer sur l'essentiel sans avoir besoin de gérer de nombreux détails liés au développement web traditionnel."), 
            tags$li("Intégration Transparente avec Python : Étant une bibliothèque Python, Streamlit s'intègre naturellement avec l'écosystème Python, en particulier avec des bibliothèques populaires telles que Pandas, Matplotlib et Plotly pour l'analyse et la visualisation de données."),
            tags$li("Widgets Intuitifs : Streamlit offre une variété de widgets interactifs tels que des curseurs, des boutons et des champs de texte, ce qui facilite l'ajout d'interactivité à vos applications."),
            tags$li("Visualisation Instantanée : Les DataFrames et les graphiques sont automatiquement rendus et actualisés, permettant aux utilisateurs de voir instantanément les changements lors de la modification des paramètres."),
            tags$li("Pas de Nécessité de Serveur Séparé : Streamlit inclut un serveur web intégré, éliminant la nécessité de déployer votre application sur un serveur distinct."),
            tags$li("Personnalisation CSS Facile : Bien que Streamlit soit axé sur la simplicité, il permet également une personnalisation légère du style avec l'utilisation de code CSS."),
            tags$li("Interactivité Déclarative : L'interactivité est déclarative, ce qui signifie que les développeurs spécifient simplement le comportement interactif souhaité, et Streamlit s'occupe du reste."),
            tags$li("Documentation Complète et Communauté Active : Streamlit dispose d'une documentation complète et d'une communauté active qui facilite l'apprentissage et la résolution de problèmes."),
            tags$li("Déploiement Facile : Des options de déploiement simples et diverses sont disponibles, notamment Streamlit Sharing, Heroku, Docker, etc."),
        ),
        p("En combinant ces avantages, Streamlit offre une solution attrayante pour le développement rapide d'applications interactives en Python, en particulier dans le domaine de l'analyse de données et de la création de tableaux de bord.")
        ),
        tabPanel("Plan du cours",
                 
        ),
        tabPanel("Quelques liens utiles",
                 
        )
    )
  )
}

home_server <- function(input, output, session) {
  output$shiny_logo <- renderImage({
    list(src = "/home/hp/Téléchargements/shiny.png", width = "400", height = "300")
  }, deleteFile = FALSE)
}