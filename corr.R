corr <- function(directory, threshold=0){
  
  
  v_corr <- numeric(0)
  list_of_nobs <- complete(directory)
  list_of_files <- list.files(directory, full.names = TRUE)
  
  for(i in 1:332){
    
    if(list_of_nobs$nobs[i] > threshold){
      
      file <- read.csv(list_of_files[i])
      subset_data <- subset(file, complete.cases(file))
      v_corr <- c(v_corr, cor(subset_data$nitrate, subset_data$sulfate))
    }
  }
  return(v_corr)
}

