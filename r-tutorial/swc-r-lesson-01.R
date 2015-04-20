# R inflammatin data
# Install Packages, Dependencies xml, openssl from Ubuntu OS
# install first libcurl4-openssl-dev, libxml2-dev
## sudo apt-get install libcurl4-openssl-dev
## sudo apt-get install libxml2-dev
install.packages("RCurl")
library("RCurl")
urlData <- getURL("https://raw.githubusercontent.com/swcarpentry/patient-data/master/inflammation-01.csv")
patient.dat <- read.csv(textConnection(urlData))

# Look inside object
class(patient.dat)
str(patient.dat)
dim(patient.dat)

# Data Slicing

# Summary statistics
max(patient.dat)
min(patient.dat)
rowMeans(patient.dat)
colMeans(patient.dat)

# Apply Functions : column-by-column and row-by-row
avg_patient_inflammation <- apply(patient.dat, 1, mean)
avg_day_inflammation <- apply(patient.dat, 2, mean)

plot(avg_day_inflammation)


# plot
