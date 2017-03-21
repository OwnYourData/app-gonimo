# global constants available to the app
# last update:2016-01-17

# constants required for every app
appName <- 'gonimo'
appTitle <- 'Gonimo'
app_id <- 'eu.ownyourdata.gonimo'
helpUrl <- 'https://www.ownyourdata.eu/apps/gonimo'
mobileUrl <- ''

# definition of data structure
currRepoSelect <- ''
appRepos <- list(Vorlage = 'eu.ownyourdata.gonimo',
                 Verlauf = 'eu.ownyourdata.gonimo.log')
appStruct <- list(
        Vorlage = list(
                fields      = c('text'),
                fieldKey    = 'text',
                fieldTypes  = c('string'),
                fieldInits  = c('empty'),
                fieldTitles = c('Text'),
                fieldWidths = c(600)),
        Verlauf = list(
                fields      = c('date', 'description'),
                fieldKey    = 'date',
                fieldTypes  = c('date', 'string'),
                fieldInits  = c('empty', 'empty'),
                fieldTitles = c('Datum', 'Text'),
                fieldWidths = c(150, 450)))

# Version information
currVersion <- "0.3.0"
verHistory <- data.frame(rbind(
        c(version = "0.3.0",
          text    = "erstes Release")
))

# app specific constants
