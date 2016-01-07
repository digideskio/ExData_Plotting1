source("common.R")

png(
  filename = "plot2.png", width = 480, height = 480, units = "px"
)

plot(
  as.POSIXlt(df$Time),
  df$Global_active_power,
  type = "l",
  ylab = "Global Active Power (Kilowatts)",
  xlab = ""
)
dev.off()
