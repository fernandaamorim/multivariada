#Análise Multivariada - QUIZZ 1 
#Regressão Linear Múltipla 

hbat <- read.table("hbat.txt", header = TRUE, sep = ",")
#Exploração Inicial dos Dados 
summary(hbat)
cor(x=hbat[,7:19], y=hbat$x19)


#Regressão linear Múltipla - Estimação do Modelo
lm1 <- lm(x19 ~ x6 + x7 + x8 + x9 + x10 + x11 + x12 + x13 + x14 + x15 + x16 + x17 + x18, data = hbat)
summary(lm1)
#Método Stepwise 
step <- step(lm1, direction = "both")
print(step$anova)


