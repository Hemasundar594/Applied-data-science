data <- iris
head(data,10)

summary(data)

row_labels = data[,5]

data$Species <- as.numeric(data$Species)


set.seed(123)

size <- floor(0.8 *  nrow(data))

train_ind <- sample(seq_len(nrow(data)), size = size)


train_labels <- data[train_ind, 5]

data_train <- data[train_ind,1:4]
data_test <- data[-train_ind,1:4]


data_test_labels <- row_labels[-train_ind]

library(class)

predictions <- knn(train = data_train,
                   test = data_test,
                   cl = train_labels,
                   k= 11)




colnames(plot_predictions) <- c("Sepal.Length",
                                "Sepal.Width",
                                "Petal.Length",
                                "Petal.Width",
                                'predicted')







library(ggplot2)
library(plyr)
require(gridExtra)




p1 <- ggplot(plot_predictions, aes(Petal.Length, Petal.Width)) + 
  geom_point(size = 5) + 
  ggtitle(" Petal Length and Width") 
 

p2 <- ggplot(plot_predictions, aes(Sepal.Length, Sepal.Width)) + 
  geom_point(size = 5) + 
  ggtitle(" Sepal Length and Sepal") 

grid.arrange(p1, p2)

