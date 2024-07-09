pollutantmean <- function(directory, pollutant, id = 1:332){
  
  subset_data <- data.frame()
  list_of_files <- list.files(directory, full.names = TRUE)
  
  for(i in id){
    
    file <- list_of_files[i]
    data <- read.csv(file)
    
    subset_data <- rbind(subset_data, data)
  }
  mean(subset_data[[pollutant]],na.rm = TRUE)
}
