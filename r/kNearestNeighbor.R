### k-nearest-neighbor

# Klasse A Fälle
A1=c(2,4)
A2=c(4,4.5)
A3=c(1,3.5)
A4=c(2.5,4)

# Klasse B Fälle
B1=c(6,6.5)
B2=c(6,7)
B3=c(4,7)
B4=c(5,7)

# Fälle zusammenführen
train=rbind(A1,A2,A3,A4,B1,B2,B3,B4)

# Klasse zuteilen
cl=factor(c(rep("A",4),rep("B",4)))

# Plot von X1 und X2
plot(train)

# Zu klassifizierender Fall
test=c(5,5)

# Paket class laden 
library(class)

# Hilfe für FUnktion knn
help(knn)

# Ergebnis der Klassifikation mit k=1 aufrufen
summary(knn(train, test, cl, k = 1))
