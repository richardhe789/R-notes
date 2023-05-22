Change R Rstudio temp location

1.. Check current settings under R
```
> Sys.getenv("R_USER")
[1] "C:/Users/rhe/Documents"
```

2.. Create a file under "C:/Users/rhe/Documents"
File name .Renviron
Content
```
TMP=C:\\tmp\\2
TMPDIR=C:\\tmp\\2
TEMP=C:\\tmp\\2
```
3.. Restart Rstudio

4.. install the new package
```
library("devtools")
install_local(path="C:\\tmp\\urbnmapr-master.zip")
```
