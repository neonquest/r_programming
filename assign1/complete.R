
complete <- function(directory, id = 1:332) {
  
  num <- length(id)
  
  # Create empty output data frame
  complete_data <- data.frame(id = numeric(num), nobs = numeric(num))
  
  index <- 1
  for (i in id) {
    filename_id <- formatC(i, format = 'd', flag = "0", width = 3)
    filename_wdir <- paste(directory, filename_id, sep = "/")
    filename <- paste(filename_wdir, ".csv", sep = "")
    
    data <- read.csv(filename)
    
    # Add only pollutant data to all_data
    complete_cases <- nrow(data[which(!is.na(data$sulfate) & !is.na(data$nitrate)),])
    
    complete_data$id[index] <- i
    complete_data$nobs[index] <- complete_cases
    
    index <- index + 1
  }
  
  complete_data
}