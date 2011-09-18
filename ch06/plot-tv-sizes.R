tvs <- read.table('tv_sizes.txt', sep="\t", header=TRUE)

tvs <- tvs[tvs$size < 80, ]
tvs <- tvs[tvs$size > 10, ]

breaks = seq(10, 80, by=5)

par(mfrow=c(4,2))
hist(tvs[tvs$year == 2009,]$size, breaks=breaks)
hist(tvs[tvs$year == 2008,]$size, breaks=breaks)
hist(tvs[tvs$year == 2007,]$size, breaks=breaks)
hist(tvs[tvs$year == 2006,]$size, breaks=breaks)
hist(tvs[tvs$year == 2005,]$size, breaks=breaks)
hist(tvs[tvs$year == 2004,]$size, breaks=breaks)
hist(tvs[tvs$year == 2003,]$size, breaks=breaks)
hist(tvs[tvs$year == 2002,]$size, breaks=breaks)
#hist(tvs[tvs$year == 2001,]$size, breaks=breaks)