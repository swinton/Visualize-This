# Load data
postage <- read.csv("data/us-postage.csv", sep=",", header=TRUE)

# Plot as regular time series
plot(postage$Year, postage$Price, type="l")

# Default step chart
plot(postage$Year, postage$Price, type="s")

# Add labels
plot(postage$Year, postage$Price, type="s", main="US Postage Rates for Letters, First Ounce, 1991-2009", xlab="Year", ylab="Postage Rate (Dollars)")