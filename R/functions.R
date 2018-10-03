#functions start
#simple function to replace NAs
removeNAs<-function(df,cols){
  apply(df[,cols], 2, function(x){replace(x, is.na(x), 0)})
}

#function to grab the column with the max value
col_compare<-function(df,cols,fun=which.max){
  x<-data.frame(df)
  temp<-x[,c(cols)]
  wins<-colnames(temp)[apply(temp,1,fun)]
  return(wins)
}

