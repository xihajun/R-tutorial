# There are three different way but I have used the computer in Bristol it doen't work for these methods. For Bristol's computers, it might need more setting. For example, read the error messages and through these to install automatically by using if else loop.
# I think the easiest one
if (!require("pacman")) install.packages("pacman")
pacman::p_load(package1, package2, package_n)
# note: for different R version the package might be different which can cause the errors
# from: https://stackoverflow.com/questions/4090169/elegant-way-to-check-for-missing-packages-and-install-them

# 将需要的包写入list即可
list.of.packages = c("caret","data.table","ggplot2","ranger") # replace xx and yy with package names
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages) > 0) {install.packages(new.packages)}
lapply(list.of.packages, require, character.only=T)
#from git but without reference

# one more
RequiredPackages <- c("stockPortfolio","quadprog")
for (i in RequiredPackages) { #Installs packages if not yet installed
    if (!require(i)) install.packages(i)
}
# from: https://stackoverflow.com/questions/29004325/automatically-install-list-of-packages-in-r-if-necessary
