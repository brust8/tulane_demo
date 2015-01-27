install.packages("ggplot2", dependencies=TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")
#load libraries upon start each time
library("ggplot2")
library("plyr")
library("ggthemes")
library("reshape2")
head(iris)
iris[1:2, ]
df <- melt(iris, id.vars = "Species")
df[1:2, ]
myplot <- ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width))
summary(myplot)
ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width)) + geom_point()
myplot <- ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width)) + geom_point()
myplot
ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) + geom_point(aes(shape=Species), size=3)
#make as small sample of the diamonds dataset
d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
ggplot(data=d2, aes(x=carat, y=price, color=color)) + geom_point()
head(d2)
summary(d2)
library(MASS)
ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
?geom_boxplot
summary(birthwt)
myplot <- ggplot(birthwt, aes(factor(race), bwt)) + geom_boxplot()
summary(myplot)
ggplot(data=iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) + geom_point() + facet_wrap(~ Species)
aes(color = variable)
color = "black"
library(RColorBrewer)
display.brewer.all()
df <- melt(iris, id.vars = "Species")
ggplot(df, aes(Species, value, fill=variable)) + geom_bar(stat = "identity", position = "dodge") + scale_fill_brewer(palette = "Set2")
h <- ggplot(faithful, aes(x=waiting))
h + geom_histogram(binwidth = 8, fill = "steelblue", colour = "black")
d3 <- ggplot(d2, fill = variable, aes(x=clarity))
d3 + geom_histogram(binwidth = 3, stat = "cut") + scale_fill_brewer(palette = "Set2")
?geom_histogram
d3 <- ggplot(d2, fill = variable, aes(x=clarity))
ggplot(d2, aes(x=clarity, fill=cut)) + geom_bar(position="dodge")

ggplot(faithful, aes(waiting)) + geom_density(fill = "blue", alpha = 0.1)
ggplot(faithful, aes(waiting)) + geom_line(stat = "density")
library("wes anderson")
install.packages("Wes Anderson")
