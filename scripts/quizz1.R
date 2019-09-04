library(pwr)
library(haven)



#Análise Multivariada - QUIZZ 1 
#Regressão Linear Múltipla 

hbat <- read_sav("data/HBAT.sav")
#Exploração Inicial dos Dados 
summary(hbat)
cor <- cor(x=hbat[,7:19], y=hbat$x19)
cor[which.max(cor),] #variável de maior correlação = x9 

#Poder da amostra
pwr.f2.test(u = 14, v = 86, f2= NULL, sig.level = 0.05, power = 0.8)


lm_cor <- lm(x19 ~ x9, data = hbat)

#BoxPlot 
#Linearidade do Modelos 
dispersao 
#Normalidade 
hist
#Homocedascidade 
bp 
#Distância Cook 




#Regressão linear Múltipla - Estimação do Modelo
lm1 <- lm(x19 ~ x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14 + x15 + x16 + x17 + x18, data = hbat)
summary(lm1)
#Método Stepwise 
step <- step(lm1, direction = "both")

#Validação 
#Selecionar uma amostra de 50
hbat_50 <- hbat






