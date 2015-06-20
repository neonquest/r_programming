
corr <- function(directory, threshold = 0, id = 1:332) {
  
  num <- length(id)
  
  # Create empty numeric vector
  corr_data <- numeric(0)
  
  for (i in id) {
    filename_id <- formatC(i, format = 'd', flag = "0", width = 3)
    filename_wdir <- paste(directory, filename_id, sep = "/")
    filename <- paste(filename_wdir, ".csv", sep = "")
    
    data <- read.csv(filename)
    
    # Add only pollutant data to all_data
    complete_cases <- nrow(data[which(!is.na(data$sulfate) & !is.na(data$nitrate)),])
    
    # Continue if complete_cases are not greater than threshold
    if (complete_cases <= threshold) {
      next
    }
   
    corr_data <- c(corr_data, cor(data$sulfate, data$nitrate, use="na.or.complete"))
    
  }
  
  corr_data
}