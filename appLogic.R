# application specific logic
# last update: 2017-02-13

source('srvDateselect.R', local=TRUE)
source('srvEmail.R', local=TRUE)
source('srvScheduler.R', local=TRUE)

# any record manipulations before storing a record
appData <- function(record){
        record
}

getRepoStruct <- function(repo){
        appStruct[[repo]]
}

repoData <- function(repo){
        data <- data.frame()
        app <- currApp()
        if(length(app) > 0){
                url <- itemsUrl(app[['url']],
                                repo)
                data <- readItems(app, url)
        }
        data
}

# anything that should run only once during startup
appStart <- function(){

}

output$gonimoChart <- renderPlotly({
        data <- currDataDateSelectTimestamp()
        pdf(NULL)
        outputPlot <- plotly_empty()
        data$dat <- as.Date(as.POSIXct(data$time/1000, origin = '1970-01-01'))
        data$date <- as.POSIXct(data$time/1000, origin = '1970-01-01')
        data$val <- as.numeric(data$volume)
        if(nrow(data) > 0){
                outputPlot <- plot_ly(
                        data,
                        x = ~data$date,
                        y = ~data$val,
                        type = 'bar'
                ) %>% layout( title = '',
                              showlegend = FALSE,
                              margin = list(l = 80, r = 80),
                              yaxis = list(title = 'Lautstärke'),
                              xaxis = list(
                                title = '',
                                rangeslider = list(type = 'date'))
                )
        }
        dev.off()
        outputPlot
        
})