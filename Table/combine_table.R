# here variables are matrix
ktable <- rbind(Clusternormal$centers,Clusterdos$centers,Clusterprobe$centers,Clusterr2l$centers,Clusteru2r$centers)
nrow(ktable)
ncol(ktable)
ktable <- as.data.frame(ktable)
ktable
