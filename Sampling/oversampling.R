library(pROC)

auc <- roc(testSplit$target, pred)

print(auc)

#Try to code SMOTE
