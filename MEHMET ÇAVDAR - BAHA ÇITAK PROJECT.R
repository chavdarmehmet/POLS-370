setwd("~/Desktop/2020:2021/Spring/POLS 370/R EXCERCISES")
install.packages("readxl")
install.packages("signnet")
install.packages("igraph")
install.packages("ggraph")
library (igraph)
library (readr)
library (haven)
library (ggplot2)
library (readxl)
library (CINNA)
library (dplyr)
library (igraphdata)
library (centiserve)
library(ggraph)
library(signnet)

s108_edges <- read_excel("cs.xlsx")
senator_graph_positive = graph.data.frame(s108_edges, directed=TRUE)
senator_graph_positive
V(senator_graph_positive)
E(senator_graph_positive)

a <- plot.igraph(senator_graph_positive, vertex.size=7, layout = layout.fruchterman.reingold, edge.arrow.size=0.04, vertex.color = 'blue', vertex.label.color = 'black') 

graph.density(senator_graph_positive)
mean_distance(senator_graph_positive)


max(degree(senator_graph_positive))
min(degree(senator_graph_positive))
mean(degree(senator_graph_positive))

max(closeness(senator_graph_positive))

plot(transitivity(senator_graph_positive))

#why is our line 36 graph like that ?

transitivity(senator_graph_positive)

sort(degree(senator_graph_positive, mode = "out"))

sort(degree(senator_graph_positive, mode = "in" ))
#Rick Santorum, the sponsor of "Partial Abortion Ban Act", has 12 edges coming out/in from/to him. Stabenow seems to be the senator with the most amout of positive relationships with other senators.


max(closeness(senator_graph_positive))
centr_clo(senator_graph_positive)

eigen_centrality(senator_graph_positive)



