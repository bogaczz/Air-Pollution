complete <- function(directory, id = 1:332){
  
  list_of_files <- list.files(directory, full.names = TRUE)
  complete_frame <- data.frame()
  
  for(i in id){
    file <- list_of_files[i]
    data <- read.csv(file)
    cases <- data.frame(i, sum(complete.cases(data)))
    #łącze wiersze 
    complete_frame <- rbind(complete_frame, cases)
   
    
  }
  colnames(complete_frame)<-c("id", "nobs")
  complete_frame
}

print(complete("specdata", 3))
