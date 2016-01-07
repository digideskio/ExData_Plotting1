source("common.R")

png(
  filename = "plot4.png", width = 480, height = 480, units = "px"
)

par(mfrow=c(2,2))

# Plot 1
plot(
  as.POSIXlt(df$Time),
  df$Global_active_power,
  type = "l",
  ylab = "Global Active Power",
  xlab = ""
)

# Plot 2
plot(
  as.POSIXlt(df$Time),
  df$Voltage,
  type = "l",
  ylab = "Voltage",
  xlab = "datetime"
)

# Plot 3
plot(
  as.POSIXlt(df$Time),
  df$Sub_metering_1,
  type = "l",
  ylab = "Energy sub metering",
  xlab = "",
  col = "black"
)

lines(
  as.POSIXlt(df$Time),
  df$Sub_metering_2,
  col = "red"
)

lines(
  as.POSIXlt(df$Time),
  df$Sub_metering_3,
  col = "blue"
)

legend("topright", names(df)[7:9], col=c("black", "blue","red"), bty = "n", lty = c(1,1,1))

# Plot 4
with(df,
  plot(
    as.POSIXlt(df$Time),
    Global_reactive_power,
    type = "l",
    xlab = "datetime"
  )
)

dev.off()
