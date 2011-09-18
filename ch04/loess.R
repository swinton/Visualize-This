# Load data
unemployment <- read.csv("http://datasets.flowingdata.com/unemployment-rate-1948-2010.csv", sep=",")
unemployment[1:10,]

# Plain scatter plot
plot(1:length(unemployment$Value), unemployment$Value)

# Fitted linear line
lines(c(1,746), c(4.889523,6.42593))

# Scatter plot with loess
scatter.smooth(x=1:length(unemployment$Value), y=unemployment$Value)

# Fix y-axis to start at zero
scatter.smooth(x=1:length(unemployment$Value), y=unemployment$Value, ylim=c(0,11), degree=2)

# Change color
scatter.smooth(x=1:length(unemployment$Value), y=unemployment$Value, ylim=c(0,11), degree=2, col="#CCCCCC", span=0.5)
