require(data.table)

fileUrl  <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
destfile <- "exdata-data-household_power_consumption.zip"
dataset  <- "household_power_consumption.txt"

# Download and unzip the dataset
if (!file.exists(destfile)) {
  res <- tryCatch(
    download.file(fileUrl, method = "libcurl", destfile = destfile),
    error = function(e)
      1
  )
  unzip(destfile)
}

df <- fread(
  dataset, sep = ";", header = T, na.strings = c("", "?")
)

# Convert Date string to date
df$Date <- as.Date(df$Date, "%d/%m/%Y")
df <- df[df$Date %in% as.Date(c('2007-02-01', '2007-02-02')),]