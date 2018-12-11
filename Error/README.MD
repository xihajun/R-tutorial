# Try to collect some error message and give some solutions!
## Can't find function
Solution from: https://stackoverflow.com/questions/36958944/r-error-could-not-find-function-select/36958981#36958981
load sos and use findFn to find this function
``` 
library(dplyr)
library(utils)
library(sos)
# need package dplyr and utils for sos
findFn("select")
findFn("starts_with")
# which gives only 14 hits in 9 packages, the first one of which leads to dplyr::select.
```
### Error: could not find function "%>%"
You need to install or load the package `magrittr`
### Error: could not find function "select"
You need to install or load the package `dplyr`


