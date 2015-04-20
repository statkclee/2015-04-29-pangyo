# Documentation and Loops

# Define analyze function
analyze <- function(input){
  # Plots min, max, avg
  # Input is a csv string file.
  dat <- read.csv(input, sep=",", head=F)
  avg_day_inflammation <- apply(dat, 2, mean)
  min_day_inflammation <- apply(dat, 2, min)
  max_day_inflammation <- apply(dat, 2, max)
  plot(avg_day_inflammation)
  plot(min_day_inflammation)
  plot(max_day_inflammation)
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