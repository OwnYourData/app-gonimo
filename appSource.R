# layout for section "Source"
# last update: 2016-10-06

# source("uiSourceItemConfig.R")

appSource <- function(){
        tagList(
                br(),
                helpText('Starte das Browser-basierte Babyphon von Gonimo und zeichne in deinem Datentresor die Geräusche in der Nacht auf.'),
                fluidRow(column(3, 
                                img(src='gonimo.png', width='200px', alt='Gonimo')),
                         column(9,
                                p(span('Webseite von Gonimo:'),
                                  a('https://Gonimo.com', target='_blank', href='https://www.gonimo.com')),
                                h3('Anleitung'),
                                p('Führe folgende Schritte durch, um Gonimo mit deinem Datentresor zu verbinden:'),
                                tags$ol(
                                        tags$li('gehe auf die Webseite des Gonimo Babyphones: ', a('https://app.gonimo.com', href='https://app.gonimo.com')),
                                        tags$li('öffne die Browserkonsole: Menü > Weitere Tools > Entwicklertools > Konsole'),
                                        tags$li('führe den folgenden Befehl auf der Konsole aus:', br(), span(id='gonimo_setup', style='font-family: monospace;', '')),
                                        tags$li('starte die Baby Station')
                                ),
                                p('Um die Verbindung zwischen Gonimo und deinem Datentresor zu trennen, führe folgenden Befehl auf der Browserkonsole des Gonimo Babyphones aus und starte danach die Baby Station neu:'),
                                span(style='font-family: monospace; padding:10px;', "localStorage.removeItem('OYD');")
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
