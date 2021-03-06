source("common.R")

png(
  filename = "plot1.png", width = 480, height = 480, units = "px"
)
hist(
  df$Global_active_power,
  col = "red",
  main = "Global Active Power",
  xlab = "Global Active Power (Kilowatts)",
  ylab = "Frequency"
)
dev.off()
