# Load the data
crime <- read.csv('crimeRatesByState2005.csv', sep=",", header=TRUE)

# Remove US total and DC
crime2 <- crime[crime$state != "District of Columbia",]
crime2 <- crime2[crime2$state != "United States",]


# Scatterplot for murder and burglary
plot(crime$murder, crime$burglary)
plot(crime2$murder, crime2$burglary)
plot(crime2$murder, crime2$burglary, xlim=c(0,10), ylim=c(0, 1200))

# Scatterplot with loess smoother
scatter.smooth(crime2$murder, crime2$burglary, xlim=c(0,10), ylim=c(0, 1200))



# Scatterplot matrix
plot(crime2[,2:9])

# Scatterplot matrix with loess
pairs(crime2[,2:9], panel=panel.smooth)


# Stem and leaf
birth <- read.csv("birth-rate.csv")
stem(birth$X2008)

# Histogram
hist(birth$X2008)
hist(birth$X2008, breaks=5)
hist(birth$X2008, breaks=20)

# Histogram matrix
library(lattice)
birth_yearly <- read.csv("birth-rate-yearly.csv")
histogram(~ rate | year, data=birth_yearly, layout=c(10,5))

birth_yearly.new <- birth_yearly[birth_yearly$rate < 132,]
birth_yearly.new$year <- as.character(birth_yearly.new$year)
h <- histogram(~ rate | year, data=birth_yearly.new, layout=c(10,5))
update(h, index.cond=list(c(41:50, 31:40, 21:30, 11:20, 1:10)))

# Density plot
birth2008 <- birth$X2008[!is.na(birth$X2008)]
d2008 <- density(birth2008)
plot(d2008)

# Filled density plot
plot(d2008, type="n")
polygon(d2008, col="#821122", border="#cccccc")

# Storing data
d2008frame <- data.frame(d2008$x, d2008$y)
write.table(d2008frame, "testing.txt", sep="\t")
write.table(d2008frame, "testing.txt", sep="\t", row.names=FALSE)

# Both
library(lattice)
histogram(birth$X2008, breaks=10)
lines(d2008)

