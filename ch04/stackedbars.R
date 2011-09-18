# Load data
hot_dog_places <- read.csv('data/hot-dog-places.csv', sep=",", header=TRUE)

# Fix year names
names(hot_dog_places) <- c("2000", "2001", "2002", "2003", "2004", "2005", "2006", "2007", "2008", "2009", "2010")

# Stacked bar chart
hot_dog_matrix <- as.matrix(hot_dog_places)
barplot(hot_dog_matrix)

# Clean it up
barplot(hot_dog_matrix, border=NA, space=0.25, ylim=c(0, 200), xlab="Year", ylab="Hot dogs and buns (HDBs) eaten", main="Hot Dog Eating Contest Results, 1980-2010")