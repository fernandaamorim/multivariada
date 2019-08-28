#An�lise Multivariada - QUIZZ 1 
#Regress�o Linear M�ltipla 

hbat <- read.table("hbat.txt", header = TRUE, sep = ",")
#Explora��o Inicial dos Dados 
summary(hbat)
cor(x=hbat[,7:19], y=hbat$x19)


#Regress�o linear M�ltipla - Estima��o do Modelo
lm1 <- lm(x19 ~ x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14 + x15 + x16 + x17 + x18, data = hbat)
summary(lm1)
#M�todo Stepwise 
step <- step(lm1, direction = "both")
print(step$anova)

