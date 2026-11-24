# Statistiche descrittive avanzate

# data() - carica un data set già incluso in R nella sessione corrente
# esempio: data(mtcars) carica il data set delle automobili
# esempio: data(package = "datasets") elenca i data set del pacchetto datasets
data(mtcars)

# summary() - su un data.frame mostra per ogni colonna minimo, quartili, mediana, media e massimo
# esempio: summary(mtcars$mpg) riassume solo il consumo
# esempio: summary(mtcars$cyl) conta le occorrenze di ciascun numero di cilindri
summary(mtcars)

# mean() - media aritmetica; dentro sapply() viene applicata a ogni colonna del data.frame
# esempio: sapply(mtcars, mean) restituisce la media di ogni variabile
# esempio: mean(mtcars$mpg) calcola la media del solo consumo
sapply(mtcars, mean)

# sd() - deviazione standard campionaria; dentro sapply() si applica a ogni colonna
# esempio: sapply(mtcars, sd) restituisce la deviazione standard di ogni variabile
# esempio: sd(mtcars$mpg) calcola la deviazione standard del solo consumo
sapply(mtcars, sd)

# cor() - matrice di correlazione di Pearson tra tutte le colonne (valori tra -1 e 1)
# esempio: cor(mtcars$mpg, mtcars$wt) correlazione tra due singole variabili
# esempio: round(cor(mtcars), 2) arrotonda la matrice per una lettura più facile
cor(mtcars)