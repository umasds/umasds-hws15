### Kreuzvalidierung

## Validierungset
# Pakete laden
install.packages("caret")
library(caret)
install.packages("e1071")
library(e1071)

# Datensatz laden
str(mtcars)
mtcars

# Set setzen
set.seed(1)

# Sample Index erstellen
train=sample(32,16)
train

# 1. Model mit linearen Term
model1=lm(mpg~hp, data=mtcars, subset=train)
summary(model1)

mean((mtcars$mpg - predict(model1, mtcars))[-train]^2)
# 2. Model mit quadratischem Term

model2=lm(mpg~poly(hp, 2), data=mtcars, subset=train)
mean((mtcars$mpg - predict(model2, mtcars))[-train]^2)
# 3. Model mit cubischem Term

model3=lm(mpg~poly(hp, 3), data=mtcars, subset=train)
mean((mtcars$mpg - predict(model3, mtcars))[-train]^2)

## k-fold cross-validation
# Iris-Daten laden
str(iris)

# Trainingsgruppe definieren
train_control <- trainControl(method="cv", number=10)

# Modell trainieren
model <- train(Species~., data=iris, trControl=train_control, method="knn")

# Vorhersagen machen
predictions <- predict(model, iris)

# Ergebnisse zusammenfassen
confusionMatrix(predictions, iris$Species)
