get_data <- function(type) {
  thedata <- read.table(paste0('UCI HAR Dataset/', type, '/X_', type, '.txt'))
  colnames(thedata) <- read.table('UCI HAR Dataset/features.txt')[,2]
  thedata <- thedata[grep("*-std()*|*-mean()*", colnames(thedata), value = TRUE)]
  thedata$label <- read.table(paste0('UCI HAR Dataset/', type, '/y_', type, '.txt'))[,1]
  thedata$label <- factor(thedata$label, levels=1:6, labels=read.table('UCI HAR Dataset/activity_labels.txt')[,2])
  thedata$subject <- read.table(paste0('UCI HAR Dataset/', type, '/subject_', type, '.txt'))[,1]
  
  return(thedata)
}

run_analysis <- function() {
  # Getting the data
  if(!dir.exists('UCI HAR Dataset')) {
    download.file('http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip', destfile='tmp.zip')
    unzip('data.zip')
    file.remove('data.zip')
  }
  
  # Combine data
  thedata <- rbind(get_data('test'), get_data('train'))
  write.table(thedata, file='tidydata.txt', row.names = FALSE, col.names = FALSE)
  
  thedata2 <- aggregate(thedata, list(label=thedata$label, subject=thedata$subject), mean)
  write.table(thedata2[,c(3:81, 1:2)], "tidydata2.txt", row.names = FALSE, col.names = FALSE)
  
  write.table(colnames(thedata), file='colnames.txt', row.names = FALSE, col.names = FALSE)
  
}