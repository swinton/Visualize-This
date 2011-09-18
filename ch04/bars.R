# Load data
hotdogs <- read.csv("data/hot-dog-contest-winners.csv", sep=",", header=TRUE)

# Default barchart
barplot(hotdogs$Dogs.eaten)

# Year labels
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year)

# Axis labels
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, xlab="Year", ylab="Hot dogs and buns (HDB) eaten")

# Fill color and border
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col="red", border=NA, xlab="Year", ylab="Hot dogs and buns (HDB) eaten")


# Highlight USA colors
fill_colors <- c()
for ( i in 1:length(hotdogs$Country) ) {
	if (hotdogs$Country[i] == "United States") {
		fill_colors <- c(fill_colors, "#821122")
	} else {
		fill_colors <- c(fill_colors, "#cccccc")
	}
}
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=fill_colors, border=NA, xlab="Year", ylab="Hot dogs and buns (HDB) eaten")


# Highlight record years with color
fill_colors <- c()
for ( i in 1:length(hotdogs$New.record) ) {
	if (hotdogs$New.record[i] == 1) {
		fill_colors <- c(fill_colors, "#821122")
	} else {
		fill_colors <- c(fill_colors, "#cccccc")
	}
}
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=fill_colors, border=NA, xlab="Year", ylab="Hot dogs and buns (HDB) eaten")


# Spacing
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=fill_colors, border=NA, space=0.3, xlab="Year", ylab="Hot dogs and buns (HDB) eaten", main="Nathan's Hot Dog Eating Contest Results, 1980-2010")

barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=fill_colors, border=NA, space=0.5, xlab="Year", ylab="Hot dogs and buns (HDB) eaten")

# Main title
barplot(hotdogs$Dogs.eaten, names.arg=hotdogs$Year, col=fill_colors, border=NA, space=0.25, xlab="Year", ylab="Hot dogs and buns (HDB) eaten", main="Nathan's Hot Dog Eating Contest Results, 1980-2010")


