# open data from RDS file
power.df <- readRDS("power-data.rds")

# Open png device
png(filename='../plots/plot1.png')

# Make plot
hist(power.df$Global_active_power, main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', col='red')

# Turn off device
dev.off()