# 我的问题是：变量名是xxx1,xxx2,xxx3这样，如何循环赋值，不用都打出来。
解决方案有好几个：
1. eval 像matlab eval差不多的用法，但是需要加点东西，具体可以看下面的代码
2. assign combined with paste
3. 给data.table赋值变量名的时候 tablename[[ 里面使用paste0 的技巧即可 ]] （不知道如果里面是变量行不行，答案是可以）


# The perfect answer is from: [stackoverflow](https://stackoverflow.com/questions/26979490/how-to-add-column-with-a-variable-name-in-a-data-frame-in-a-loop-in-r)
```{r}
for (i in 1:nrow(b){
  dataframe[[paste0("YourString",i)]]<-dataframe1[i,2]
}
# in my project
for(i in 1:5){
  connection_events[[paste0("is_kmeans",i)]]<- as.integer(irisCluster$`cluster`==i)
}
# or you can use
for(i in 1:5){
  name = paste0("is_kmeans",i+10)
  connection_events[[name]]<- as.integer(irisCluster$`cluster`==i)
}
```

# From: [zhihu](https://zhuanlan.zhihu.com/p/30383865)
## assign(varname, variable) 
## paste("str", i, sep ="") i is i in for loop
```{r}
for(i in 1:5){
  variablename = paste("kmeans", i, sep = "_")
  columnname = paste("is_kmeans", i, sep = "_")
  assign(variablename, connection_events[connection_events$columnname==1])
}
# The same as the code below:
kmeans_1 <- connection_events[connection_events$is_kmeans_1==1]
kmeans_2 <- connection_events[connection_events$is_kmeans_2==1]
kmeans_3 <- connection_events[connection_events$is_kmeans_3==1]
kmeans_4 <- connection_events[connection_events$is_kmeans_4==1]
kmeans_5 <- connection_events[connection_events$is_kmeans_5==1]
```
# eval usage but not recommend
## From: [stackoverflow](https://stackoverflow.com/questions/30083351/variable-as-a-column-name-in-data-frame)
# eval(parse(text=paste0(' the code you what to impliment')))
```{r}
for(i in 1:5){
  subname = paste("connection_events$is_kmeans", i, sep = "_")
  eval(parse(text=paste0(subname, ' <- as.integer(irisCluster$`cluster`==1)')))
}
connection_events
```

# this is failed
```{r}
for(i in 1:5){
  variablename = paste("is_kmeans", i, sep = "_")
  subname = paste("connection_events$is_kmeans", i, sep = "_")
  print(subname)
  assign(subname, as.integer(irisCluster$`cluster`==i))
}
```
