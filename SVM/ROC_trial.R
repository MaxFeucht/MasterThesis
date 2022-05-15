library(ROCR)
library(cutpointr)
## Loading required package: gplots
## 
## Attaching package: 'gplots'
## The following object is masked from 'package:stats':
## 
##     lowess

data(ROCR.simple)
df <- data.frame(ROCR.simple)
pred <- prediction(df$predictions, df$labels)
perf <- performance(pred,"tpr","fpr")
plot(perf,colorize=TRUE)

youden <- cutpointr(df, predictions, labels, 
                method = maximize_metric, metric = youden)
summary(youden)

plot(youden)


## For pROC:

#For setting the frame to square
#par(pty="s")

plot_roc <- plot.roc(DataToPlot$isCC,DataToPlot$MPP1, ci = TRUE, percent=TRUE, print.auc = TRUE, smooth=FALSE, col="#1c61b6", asp = 0.999)
plot(ci.se(plot_roc, specificities=seq(0, 100, 1)), type="shape", no.roc = TRUE, col="#1c61b622", border = 0)

##Adding Text
text(50, 30, paste("AUC:", round(plot_roc$auc, 3), '%, ', round(plot_roc$ci[1], 2), '% - ', round(plot_roc$ci[3], 2), '%'), col="#1c61b6")