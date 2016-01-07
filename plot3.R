source("common.R")

png(
  filename = "plot3.png", width = 480, height = 480, units = "px"
)

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

legend("topright", names(df)[7:9], col=c("black", "blue","red"))

dev.off()
