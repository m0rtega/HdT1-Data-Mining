### Pregunta 4.6
names(datos)
head(datos[order(datos$popularity, decreasing = TRUE),c("genres")], n=20)
?table
generosP <- head(datos[order(datos$popularity, decreasing = TRUE),c("genres")], n=20)
genero <- NULL
for (i in generosP){
  genero<-c(genero,unlist(strsplit(i, "[|]")))
}
genero<-as.data.frame(table(genero))

View(genero[order(genero$Freq,decreasing = TRUE),c("genero","Freq")])


### Pregunta 4.7
generos<-datos[,c("genres")]
generosO<-NULL
for(i in generos)
{
  generosO<-c(generosO,unlist(strsplit(i, "[|]")))
}

barplot(
  table(generosO),
  main="Cantidad de peliculas por genero",
  xlab = "Genero",ylab = "Cantidad",
  las=2,
  
)

### Preguntas 4.8
ganancias<-head(datos[order(datos$revenue,decreasing = TRUE),c("genres")],n=10)
peliculasG<-NULL
for(i in ganancias)
{
  peliculasG<-c(peliculasG,unlist(strsplit(i, "[|]")))
}
peliculasG<-as.data.frame(table(peliculasG))

View(peliculasG[order(peliculasG$Freq,decreasing = TRUE),c("peliculasG","Freq")])

### Preguntas 4.9
presupuesto<-head(datos[order(datos$budget,decreasing = TRUE),c("genres")],n=10)
peliculasP<-NULL
for(i in presupuesto)
{
  peliculasP<-c(peliculasP,unlist(strsplit(i, "[|]")))
}
peliculasP<-as.data.frame(table(peliculasP))

View(peliculasP[order(peliculasP$Freq,decreasing = TRUE),c("peliculasP","Freq")])

### Pregunta 4.10

directores <- datos[c(6,9,18)]
directoresTop <- directores[order(-directores$vote_average),] 
directoresTop[1:25, ]
View(directoresTop[1:25, ])
