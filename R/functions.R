#functions start
#simple function to replace NAs with 0
#' Remove NAs function 
#' @param df dataframe object
#' @param cols column(s) to remove NA and replace with 0
#' @keywords NA
#' @export
#' @examples \dontrun{
#' removeNAs(df,cols)
removeNAs<-function(df,cols){
  apply(df[,cols], 2, function(x){replace(x, is.na(x), 0)})
}

#function to return the column with the max value (or value of function provided)
#' Function to return the column with the max value (or value of function provided)
#' @param df dataframe object
#' @param cols column(s) to remove NA and replace with 0
#' @param fun operator function to apply across columns, defaults to max
#' @keywords max value
#' @export
#' @examples \dontrun{
#' col_compare(df,cols)
col_compare<-function(df,cols,fun=which.max){
  x<-data.frame(df)
  temp<-x[,c(cols)]
  wins<-colnames(temp)[apply(temp,1,fun)]
  return(wins)
}

#Chart formatting functions
#'for use with axis labels, returns absolute value with commas
#' @export
abs_comma <- function (x, ...) {
  format(abs(x), ..., big.mark = ",", scientific = FALSE, trim = TRUE)
}

#abbrev. function
#from https://stackoverflow.com/questions/28159936/formatting-large-currency-or-dollar-values-to-millions-billions/28160040
#'for use with axis labels turns big number into abbrev. form
#' @export
m.compress <- function(tx) { 
  div <- findInterval(as.numeric(gsub("\\,", "", tx)), 
                      c(1, 1e3, 1e6, 1e9, 1e12) )
  paste(round( as.numeric(gsub("\\,","",tx))/10^(3*(div-1)), 2), 
        c("","K","M","B","T")[div] )} 
