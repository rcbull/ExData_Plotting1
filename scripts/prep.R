
# install library to prepare RDS data file
# install.packages("lubridate")

# set working directory
setwd("F:/github/ExData_Plotting1/scripts")

# open library
library(lubridate)

# Read data into a table
power.df <- read.table('K:/Cursos/Coursera/ExploratoryDataAnalysis/Project1/exdata-data-household_power_consumption/household_power_consumption.txt', header=TRUE,
                       sep=';', na.strings='?',
                       colClasses=c(rep('character', 2), 
                                    rep('numeric', 7)))

# Convert dates and times
power.df$Date <- dmy(power.df$Date)
power.df$Time <- hms(power.df$Time)

# Reduce data frame
start <- ymd('2007-02-01')
end <- ymd('2007-02-02')
power.df <- subset(power.df, year(Date) == 2007 & 
                     month(Date) == 2 &
                     (day(Date) == 1 | day(Date) == 2))

# Combine date and time
power.df$date.time <- power.df$Date + power.df$Time

# Save file
saveRDS(power.df, file='power-data.rds')