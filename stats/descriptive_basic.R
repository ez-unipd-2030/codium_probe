# Statistiche descrittive di base

# c() - combine: unisce i valori passati in un unico vettore
# esempio: c(1, 2, 3) crea il vettore numerico 1, 2, 3
# esempio: c("rosso", "verde") crea invece un vettore di stringhe
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# summary() - riassume l'oggetto: minimo, 1° quartile, mediana, media, 3° quartile, massimo
# esempio: summary(mtcars$mpg) riassume una singola colonna di un data.frame
# esempio: summary(mtcars) riassume tutte le colonne del data.frame
summary(x)

# mean() - calcola la media aritmetica dei valori
# esempio: mean(c(2, 4, 6)) restituisce 4
# esempio: mean(c(1, NA, 3), na.rm = TRUE) ignora i mancanti e restituisce 2
mean(x)

# sd() - calcola la deviazione standard campionaria (divide per n - 1)
# esempio: sd(c(0, 2, 4)) restituisce esattamente 2
# esempio: sd(x) la applica al vettore x definito sopra
sd(x)