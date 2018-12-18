# From: https://stackoverflow.com/questions/4862178/remove-rows-with-all-or-some-nas-missing-values-in-data-frame
new_DF <- newData[complete.cases(newData),]
# when I use the smote I have some data with NA
