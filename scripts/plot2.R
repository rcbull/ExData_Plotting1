# open data from RDS file
power.df <- readRDS("power-data.rds")

# Open png device
png(filename='../plots/plot2.png')

# Make plot
plot(power.df$date.time, power.df$Global_active_power,
     ylab='Global Active Power (kilowatts)', xlab='', type='l')

# Turn off device
dev.off()