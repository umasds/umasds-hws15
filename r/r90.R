### R n 90 Minuten

# Arbeitsverzeichnis
setwd("directoryname")
# mathematische Operationen
4^2 + 8
# Logische Prüfungen
2 == 1
2 >= 1

# Zuweisungen
a <- 2
a * 3
a <- a + 5
a
# Skalare
b <- c(1,3,5)
b > 3
# Matrizen
mat = matrix(data=c(1,2,3,4,5,6), ncol=3)
mat

# Funktionen
log(100)
log(100, base = 10)
mean(c(1,3,5))

# Plot
x=rnorm(100)
y=rnorm(100)
plot(x,y)
plot(x,y,xlab="Das ist die x-Achse",ylab="Das ist die y-Achse", main="Plot von X und Y")
# Hilfe und Dokumentation
help(mean)
help.start(mean)
example(mean)
# Skript
source("umasds.R")

# Zugriff auf Objekte
b
b[2]
# Spalten oder Zeilen
mat[1,]
# Elemente ersetzen
mat[1,1] <- 7
mat

# for-Schleife
d = seq(from=1, to=10)
e = c()
for(i in 2 :12)
  {
  e[i] = d[i] * 10
}
e

# if/else-Bedingungen
Gr50 <- ifelse(e > 50, "Gr50", "KlGl50")
table(Gr50)

f = c(1,2,3,4)
g = f[f==1 | f==4] 
g

# Daten erstellen
data = data.frame(a = c(1,2,3), b = c(4,5,6))
data
# Speichern
write.table(data, file="test.txt", row.names=F)
# Laden
data2 = read.table(file="test.txt", header=T)
data2
# Pakete installieren
install.packages ("Paketname")
# und Paktete laden
library(Paketname)

# foreign Paket
install.packages("foreign")
> library(foreign)
help(read.dta)
Data <- read.dta(".../test.dta", to.data.frame=T)
help(data.table)

# data.table Paket
install.packages("data.table")
library(data.table)
help(data.table)

# dplyr Paket
install.packages("dplyr")
library(dplyr)
help(filter)
help(arrange)
help(select)
help(distinct)
help(mutate)
help(summarise)

# ggplot2 Paket
install.packages("ggplot2")
library(ggplot2)    
help(qplot)
