# Rscript install-R-packages.r
#
# set Lib path
.libPaths("/usr/local/R/4.2.3/R/library")
# or libPaths("/home/rhe/R/x86_64-pc-linux-gnu-library/4.2")

# Package names to be installed
tbd_packages <- c("ggplot2", "readxl", "abind") 

# Install packages if not yet installed
installed_packages <- tbd_packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(tbd_packages[!installed_packages]) 
}

# To get package location
find.package("ggplot2")
