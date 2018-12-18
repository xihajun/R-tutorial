# From: https://stackoverflow.com/questions/31055564/removing-the-levels-attribute-in-the-output-r
as.character(type$V2[1])


# question from
columns <- read.table(
    "../data/kddcup.names",
    sep=":",
    skip=1,  # the first column name are the labels, but those are at the end!
    as.is=T
)
column_names <- c(columns[,1], 'label')

connection_events <- read.csv(
    "../data/kddcup.data",
    col.names=column_names
)

type <- read.table(
  "http://kdd.ics.uci.edu/databases/kddcup99/training_attack_types",
  sep=" ",
  skip=1
)
for(i in 1:22){
  name = paste0(type[[1]][i],".")
  connection_events$type[which(connection_events$label==name)]=as.character(type[[2]][i])
}
