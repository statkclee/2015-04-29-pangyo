main <- function(){
  args <- commandArgs(trailingOnly=TRUE)
  filename <- args[1]
  dat <- read.csv(file=filename, header = FALSE)
  avg_per_patient <- apply(dat, 1, mean)
  cat(avg_per_patient, sep="\n")
}

main()