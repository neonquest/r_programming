
pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  filename_id <- formatC(id, format = 'd', flag = "0", width = 3)
  filename_wdir <- paste(directory, filename_id, sep = "/")
  filename <- paste(filename_wdir, ".csv", sep = "")
  
  all_data <- data.frame()
  
  for (file in filename) {
    d <- read.csv(file)
    
    # Add only pollutant data to all_data
    all_data <- rbind(all_data, d[pollutant])
  }
  
  mean(all_data[, pollutant], na.rm = T)
}