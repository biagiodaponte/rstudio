letras <- c("A", "B", "C", "D", "E", "F", "G", "H")
numeros <- c(1, 2, 3, 4, 5, 6, 7, 8)
CHESS <- matrix(nrow = 8, ncol = 8)
CHESS

for (numero in numeros){
  fila <- c()
  for (letra in letras){
    fila <- append(fila, paste(numero, letra))
  }
  CHESS[numero,] <- fila
}

CHESS





letras <- c("A", "B", "C", "D", "E", "F", "G", "H")
numeros <- c(1, 2, 3, 4, 5, 6, 7, 8)
Chess_board <- matrix(paste(data.frame(merge(numeros, letras))$x, data.frame(merge(numeros, letras))$y), nrow = 8, ncol = 8)
rownames(Chess_board) <- 1:8
colnames(Chess_board) <- letras
