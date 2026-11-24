# Tentativo con un modello lineare generalizzato (regressione logistica)
x <- 1:100

# rbinom() - genera n numeri casuali da una distribuzione binomiale (size prove, probabilità prob)
# esempio: rbinom(10, 1, 0.5) simula 10 lanci di moneta: ogni valore è 0 oppure 1
# esempio: rbinom(1000, 20, 0.3) conta i successi su 20 prove con probabilità 0.3
# plogis() - logistica inversa: trasforma un numero reale in una probabilità tra 0 e 1
# esempio: plogis(0) restituisce 0.5; plogis(c(-10, 0, 10)) restituisce circa 0, 0.5 e 1
# in questa riga plogis(x / 10 - 2) fa crescere la probabilità da ~0.13 a ~1.00 lungo x

# glm() - fitta un modello lineare generalizzato; con family = binomial è una regressione logistica
# esempio: glm(y ~ x, data = d, family = binomial) stima il logit di y rispetto a x
# esempio: glm(y ~ x, data = d) senza family usa gaussian, cioè una regressione lineare
m <- glm(rbinom(100, 1, plogis(x / 10 - 2)) ~ x, family = binomial)

# summary() - su un modello mostra coefficienti, errori standard, statistica z e p-value
# esempio: summary(m)$coefficients estrae solo la tabella dei coefficienti
# esempio: confint(m) restituisce gli intervalli di confidenza al 95% dei coefficienti
summary(m)
