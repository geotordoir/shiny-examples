library(shiny)

shinyUI(fluidPage(
  title = 'Download a PDF report',
  sidebarLayout(
    sidebarPanel(
      helpText(),
      selectInput('x', 'Build a regression model of mpg agaist:',
                  choices = names(mtcars)[-1]),
      downloadButton('downloadReport')
    ),
    mainPanel(
      plotOutput('regPlot')
    )
  )
))
