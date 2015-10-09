### Entscheidungsbäume und Random Forest

## Klassifikationsbaum
install.packages("rpart")
library(rpart)
str(kyphosis)

# Baum wachsen lassen
fit <- rpart(Kyphosis ~ Age + Number + Start, method="class", data=kyphosis)

# Ergebnisse darstellen 
printcp(fit) 

# cross-validation Ergebnisse visualisieren
plotcp(fit) 

# Detaillierte Zusammenfassunf der Knoten
summary(fit)

# Plot des Baums 
plot(fit, uniform=TRUE, main="Classification Tree for Kyphosis")
text(fit, use.n=TRUE, all=TRUE, cex=.8)

## Random Forest Vorhersage mit Kyphosis Daten
# Pakete installieren und laden
install.packages("randomForest")
library(randomForest)

# Bäume wachsen lassen
fit <- randomForest(Kyphosis ~ Age + Number + Start,   data=kyphosis)

# Ergebnisse darstellen 
print(fit) 

# Bedeutung der einzelnen Prediktoren
importance(fit)
