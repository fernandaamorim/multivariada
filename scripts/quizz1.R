library(pwr)
library(haven)



#An�lise Multivariada - QUIZZ 1 
#Regress�o Linear M�ltipla 

hbat <- read_sav("data/HBAT.sav")
#Explora��o Inicial dos Dados 
summary(hbat)
cor <- cor(x=hbat[,7:19], y=hbat$x19)
cor[which.max(cor),] #vari�vel de maior correla��o = x9 

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
#Dist�ncia Cook 




#Regress�o linear M�ltipla - Estima��o do Modelo
lm1 <- lm(x19 ~ x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14 + x15 + x16 + x17 + x18, data = hbat)
summary(lm1)
#M�todo Stepwise 
step <- step(lm1, direction = "both")

#Valida��o 
#Selecionar uma amostra de 50
hbat_50 <- hbat






