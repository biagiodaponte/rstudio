#2 �Cu�ntas canastas a metido cada jugador por partido?
CestasPorPartido <- round(FieldGoals/Games, 2)
CestasPorPartido

#3 �Cu�l de todos los jugadores meti� m�s canastas por partido en promedio (todos los a�os)?
TopFieldGoaler <- data.frame(rowMeans(CestasPorPartido))
TopFieldGoaler[is.na(TopFieldGoaler)] <- 0
nombres <- rownames(TopFieldGoaler)
colnames(TopFieldGoaler) <- "mean"
maximo <- max(TopFieldGoaler)
jugador_pos <- which(TopFieldGoaler$mean == maximo, arr.ind = TRUE)
c(nombres[jugador_pos], maximo)

#4 �Cu�l es el jugador m�s preciso?
accuracy_percentage <- data.frame(rowMeans(round(FieldGoals/FieldGoalAttempts*100,2)))
colnames(accuracy_percentage) <- "percentage"
max_percentage <- max(accuracy_percentage, na.rm = TRUE)
print(c(nombres[which(accuracy_percentage == max_percentage)], max_percentage))
accuracy_percentage

#5 �Cada cu�ntos minutos Kobe Bryant mete una canasta en promedio?
minutes_per_field_goal <- MinutesPlayed/FieldGoals
minutes_per_field_goal["KobeBryant",]

#6 �Cu�l de todos los jugadores mete m�s canastas por minuto?
#7 Idem 6 desde 2010 a 2014
#8 �Cu�nto gana cada jugador en promedio por canasta metida?