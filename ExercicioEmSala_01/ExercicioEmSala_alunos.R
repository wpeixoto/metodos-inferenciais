
# Utilize a fun��o dnormalComp para resolver os exerc�cios abaixo

# exerc�cio 1
# verifique se as amostras abaixo pertencem � mesma popula��o
a1 <- c(
      18.8,17.591,20.835,19.169,18.755,20.504,
      18.756,17.527,19.29,19.203,18.621,18.977,17.078,22.059,18.419,
      19.919,20.308,17.62,18.585,20.764,21.117,18.899,21.426,17.89,21.055
)

a2 <- c(
      22.284,22.057,22.629,24.62,21.491,21.198,
      21.901,22.881,22.86,22.058,22.699,22.909,
      25.302,17.968,24.515,23.15,24.662,23.327,
      22.447,23.382,22.426,22.787,21.983,24.534,
      22.771,21.043,21.203,24.009,21.917,21.152
)

print("Resposta")
dnormalComp(media1=mean(a1), dp1=sd(a1), media2=mean(a2), dp2=sd(a2))  # ERRADO!! Amostra -> Erro padr�o

dnormalComp(media1=mean(a1), 
            dp1=sd(a1)/sqrt(length(a1)), 
            media2=mean(a2), 
            dp2=sd(a2)/sqrt(length(a2))
            )  
print("As amostras pertencem a popula��es distintas")

# exerc�cio 2
# leia o arquivo 'exercicio.csv' 
df <- read.csv("exercicio.csv",sep=",", header=TRUE)

# Responda as quest�es abaixo utilizando n�vel de confian�a de 95%

# 1) A amostra da coluna 1 pertence � mesma popula��o da amostra da coluna 2? 
#    A m�dia da coluna 1 � maior que, menor que ou igual a da coluna 2

dnormalComp(media1 = mean(df$a1), 
            dp1 = sd(df$a1)/sqrt(length(df$a1)), 
            media2 = mean(df$a2), 
            dp2= sd(df$a2)/sqrt(length(df$a2)))

print("As amostras das colunas a1 e a2 s�o de popula��es distintas. A m�dia da coluna a1 � menor que a da coluna a2")

# 2) A amostra da coluna 2 pertence � mesma popula��o da amostra da coluna 3? 
#    A m�dia da coluna 2 � maior que, menor que ou igual a da coluna 3

# 3) A amostra da coluna 1 pertence � mesma popula��o da amostra da coluna 3? 
#    A m�dia da coluna 1 � maior que, menor que ou igual a da coluna 3

