# Load data
subscribers <- read.csv("data/flowingdata_subscribers.csv", sep=",", header=TRUE)

# Default plot with points
plot(subscribers$Subscribers)

# Default plot with type explicity specified
plot(subscribers$Subscribers, type="p", ylim=c(0, 30000))

# Draw vertical lines
plot(subscribers$Subscribers, type="h", ylim=c(0, 30000))

# Draw points with above lines
points(subscribers$Subscribers)

# Edits with colors and labels
plot(subscribers$Subscribers, type="h", ylim=c(0, 30000), xlab="Day", ylab="Subscribers")
points(subscribers$Subscribers, pch=19, col="black") 