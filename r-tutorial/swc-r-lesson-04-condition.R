# Conditions and Automation

# Define analyze function
analyze <- function(input, output=NULL){
  # Plots min, max, avg
  # Input is a csv string file.
  # output is pdf file
  
  if(!is.null(output)){
    pdf(output)
  }
  
  dat <- read.csv(input, sep=",", head=F)
  avg_day_inflammation <- apply(dat, 2, mean)
  min_day_inflammation <- apply(dat, 2, min)
  max_day_inflammation <- apply(dat, 2, max)
  par(mfrow=c(3,1))
  plot(avg_day_inflammation)
  plot(min_day_inflammation)
  plot(max_day_inflammation)
  
  if(!is.null(output)){
    dev.off()
  }
}

analyze("inflammation-01.csv")
analyze("inflammation-02.csv")

# Loops

#filenames <- list.files(pattern="inflammation")
filenames <- list.files(pattern="csv")

for(file in filenames[1:2]) {
  print(file)
  analyze(file)
}

analyze_all <- function(pattern) {
  filenames <- list.files(pattern=pattern)
  for (file in filenames){
    print(file)
    pdf_name <- sub('csv', 'pdf', file)
    analyze(file, output=pdf_name)    
  }
}

analyze_all("small")
