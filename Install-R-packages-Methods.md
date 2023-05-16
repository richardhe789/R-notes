# Methods to install R packages
First set default R repo
```
$ cat ~/.Rprofile
local({
  r <- getOption("repos")
  r["CRAN"] <- "http://lib.stat.cmu.edu/R/CRAN/"
  options(repos = r)
})				 
```

## Install from source
### install from source under R
```
> install.packages("/tmp/gt_0.9.0.tar.gz", repos = NULL, type = "source", configure.args = c(" --with-gdal-config=/usr/local/bin/gdal-config", " --with-proj-include=/usr/local/proj/include", " --with-proj-lib=/usr/local/proj/lib64" ) )
```

or
```
> install.packages( c("pkg1", "pkg2") )

> install.packages("pkg3", dependencies = TRUE)
```
### install from source using R CMD
```
$ R CMD INSTALL -l /usr/local/R/R-4.2.3 --configure-args="--with-Rmpi-include=/usr/local/openmpi/include --with-Rmpi-libpath=/usr/local/openmpi/lib  --with-Rmpi-type=OPENMPI" --no-test-load
```
### Install R packages from GitHub
```
> install.packages('devtools')
Then
> devtools::install_github(username/repo_name[/subdir])

For example:
> devtools::install_github('rstudio/shiny')
```

### Install R packages from R Forge project
Specify in the repos argument of the install.packages function the URL of the R Forge project. The dependencies argument is used when repos is not NULL, to specify whether the dependencies of the package that are not installed must be installed or not.
```
> install.packages("MPAgenomics", repos = "http://R-Forge.R-project.org",dependencies = TRUE)
```
