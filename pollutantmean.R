
pollutantmean <- function (directory, pollutant, id = 1:332){
        # directory
        files_full <- list.files(directory, full.names = TRUE)
        
        dat <- data.frame()
        # pollutant
        for(i in id) {
                dat <- rbind(dat, read.csv(files_full[i]))
        }
        mean(dat[,pollutant], na.rm = TRUE)
        # returns mean
        
}
        