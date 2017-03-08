pollutantmean <- function(directory, pollutant, id){
  
  ##dir  <-  "C:/Users/alireza.farhidzadeh/Dropbox/Courses/R programming/Week 2/Programming assignment/specdata"

  temp <-  list.files(path=directory, pattern = ".csv")
  ## myfiles <-  lapply(temp[id], read.delim)
 
  data <- NULL
  for (i in id){
    datatemp <- read.csv(paste(directory, "/" ,temp[i], sep = ""), header = T, skip = 0)
    data <- rbind(data, cbind(datatemp[,pollutant]) )
  }
  pollutantmean <- mean(data, na.rm = TRUE)
  
}