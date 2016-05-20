complete <- function(directory, id = 1:332) {
        
        files_full <- list.files(directory, full.names = TRUE)
        ## directory is a character vector of length 1
        ## indicating the location of csv files
        
        dat <- data.frame()
        # pollutant
        for (i in id) {
                moni_i <- read.csv(files_full[i])
                nobs <- sum(complete.cases(moni_i))
                tmp <- data.frame(i,nobs)
                dat <- rbind(dat, tmp)
        }
                
        colnames(dat) <- c("id", "nobs")
        dat
                
        
}