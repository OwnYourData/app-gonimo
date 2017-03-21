# layout for section "Source"
# last update: 2016-10-06

# source("uiSourceItemConfig.R")

appSource <- function(){
        fluidRow(
                column(12,
                       # uiOutput('desktopUiSourceItemsRender')
                       tabsetPanel(
                               type='tabs',
                               tabPanel('Gonimo',
                                        br(),
                                        helpText('Starte das Browser-basierte Babyphon von Gonimo und zeichne in deinem Datentresor die Geräusche in der Nacht auf:'),
                                        fluidRow(column(3, 
                                                        img(src='gonimo.png', width='200px', alt='Gonimo')),
                                                 column(9,
                                                        p(span('Webseite von Gonimo:'),
                                                          a('https://Gonimo.com', href='https://www.gonimo.com')),
                                                        h3('Anleitung zur Einrichtung von OwnYourData'),
                                                        tags$ol(
                                                                tags$li('öffne in deinem Datentresor das Detail-Fenster der Gonimo-App und notiere das Passwort'),
                                                                tags$li('wähle im Browserfenster von Gonimo Menü > Weitere Tools > Entwicklertools'),
                                                                tags$li('unter Applications > Local Storage > https://app.alpha.gonimo.com trage die folgenden Werte ein:')
                                                        ))
                                        )
                               )
                       )
                )
        )
}

# constants for configurable Tabs
# defaultSrcTabsName <- c('SrcTab1', 'SrcTab2')
# 
# defaultSrcTabsUI <- c(
#         "
#         tabPanel('SrcTab1',
#                 textInput(inputId=ns('defaultSourceInput1'), 
#                         'Eingabe1:'),
#                 htmlOutput(outputId = ns('defaultSourceItem1'))
#         )
#         ",
#         "
#         tabPanel('SrcTab2',
#                 textInput(inputId=ns('defaultSourceInput2'), 
#                         'Eingabe2:'),
#                 htmlOutput(outputId = ns('defaultSourceItem2'))
#         )
#         "
# )
# 
# defaultSrcTabsLogic <- c(
#         "
#         output$defaultSourceItem1 <- renderUI({
#                 input$defaultSourceInput1
#         })
#         ",
#         "
#         output$defaultSourceItem2 <- renderUI({
#                 input$defaultSourceInput2
#         })
#         "
# )
