### Naive Bayes

# Daten ansehen
str(iris)

# Index für Trainings- und Testdaten
set.seed(1)
trainIndex <- createDataPartition(iris$Species, p=0.80, list=F)

# Trainings- und Testdaten definieren
dataTrain=iris[trainIndex, ]
dataTest=iris[-trainIndex, ]
head(dataTrain)
head(dataTest)

# Model bestimmen und Testdaten klassifizieren
model <- naiveBayes(Species ~ ., data = dataTrain)
model
table(predict(model, dataTest), dataTest$Species)
