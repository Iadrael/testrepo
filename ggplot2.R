library(datasets)
data(mtcars)

head(mtcars,5)

?mtcars
install.packages("ggplot2")
?ggplot2
#load ggplot package
library("ggplot2")
ggplot(data = mtcars, aes(x = disp, y = mpg)) + geom_point()
ggplot(data = mtcars, aes(x = disp, y = mpg)) +
  geom_point() +
  ggtitle("displacement vs miles per gallon")
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")
+xlab("displacement")+ylab("miles per gallon")
mtcars$vs <- as.factor(mtcars$vs)
ggplot(aes(x=vs, y=mpg), data = mtcars) + geom_boxplot()
ggplot(aes(x=vs, y=mpg, fill = vs), data = mtcars) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none")
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)