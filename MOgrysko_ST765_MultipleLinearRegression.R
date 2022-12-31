
setwd("/Users/mogrysko/Documents/Coursework/Github/LinearStatModels-MultipleLinearRegression")
orioles <- read.csv(file="Orioles_Data_1984_2022_MOgrysko.csv", header=TRUE, row.names=1)
dim(orioles)
head(orioles, 10)

#splom all seasons
dev.new(height=800, width=800)
splom(orioles, main="SPLOM Orioles Data 1984-2022 - All", pch=19, cex=.3, xlab=NULL, axis.text.cex = 0.1, varname.cex = 0.3, axis.line.tck = .3)

#correlation
cor(orioles[,c("G","W_L_Percentage","R_Scored","BatAge","PAge","NumBat","NumP","Hits_B","HR_B","SB_B","BB_B","SO_B","BA_B","E","ERA","HR_P","BB_P","SO_P","WHIP")])

#summary all
summary(orioles)

#boxplots
R_Scored_cat = factor(ifelse(orioles_rev$R_Scored < 600, "500", ifelse(orioles_rev$R_Scored < 700, "600", ifelse(orioles_rev$R_Scored < 800, "700", ifelse(orioles_rev$R_Scored < 900, "800", "900")))))
BatAge_cat = factor(ifelse(orioles_rev$BatAge < 27, "26", ifelse(orioles_rev$BatAge < 28, "27", ifelse(orioles_rev$BatAge < 29, "28", ifelse(orioles_rev$BatAge < 30, "29", ifelse(orioles_rev$BatAge < 31, "30", ifelse(orioles_rev$BatAge < 32, "31", ifelse(orioles_rev$BatAge < 33, "32", "33"))))))))
PAge_cat = factor(ifelse(orioles_rev$PAge < 27, "26", ifelse(orioles_rev$PAge < 28, "27", ifelse(orioles_rev$PAge < 29, "28", ifelse(orioles_rev$PAge < 30, "29", "30")))))
NumBat_cat = factor(ifelse(orioles_rev$NumBat < 40, "30", ifelse(orioles_rev$NumBat < 50, "40", ifelse(orioles_rev$NumBat < 60, "50", "60"))))
NumP_cat = factor(ifelse(orioles_rev$NumP < 20, "10", ifelse(orioles_rev$NumP < 30, "20", ifelse(orioles_rev$NumP < 40, "30", "40"))))
Hits_B_cat = factor(ifelse(orioles_rev$Hits_B < 1300, "1200", ifelse(orioles_rev$Hits_B < 1400, "1300", ifelse(orioles_rev$Hits_B < 1500, "1400", ifelse(orioles_rev$Hits_B < 1600, "1500", "1600")))))
HR_B_cat = factor(ifelse(orioles_rev$HR_B < 130, "120", ifelse(orioles_rev$HR_B < 140, "130", ifelse(orioles_rev$HR_B < 150, "140", ifelse(orioles_rev$HR_B < 160, "150", ifelse(orioles_rev$HR_B < 170, "160", ifelse(orioles_rev$HR_B < 180, "170", ifelse(orioles_rev$HR_B < 190, "180", ifelse(orioles_rev$HR_B < 200, "190", ifelse(orioles_rev$HR_B < 210, "200", ifelse(orioles_rev$HR_B < 220, "210", ifelse(orioles_rev$HR_B < 230, "220", ifelse(orioles_rev$HR_B < 240, "230", ifelse(orioles_rev$HR_B < 250, "240", "250"))))))))))))))
SB_B_cat = factor(ifelse(orioles_rev$SB_B < 20, "10", ifelse(orioles_rev$SB_B < 30, "20", ifelse(orioles_rev$SB_B < 40, "30", ifelse(orioles_rev$SB_B < 50, "40", ifelse(orioles_rev$SB_B < 60, "50", ifelse(orioles_rev$SB_B < 70, "60", ifelse(orioles_rev$SB_B < 80, "70", ifelse(orioles_rev$SB_B < 90, "80", ifelse(orioles_rev$SB_B < 100, "90", ifelse(orioles_rev$SB_B < 110, "100", ifelse(orioles_rev$SB_B < 120, "110", ifelse(orioles_rev$SB_B < 130, "120", ifelse(orioles_rev$SB_B < 140, "130", "140"))))))))))))), levels=c("10","20","30","40","50","60","70","80", "90", "100", "110", "120", "130", "140"))
BB_B_cat = factor(ifelse(orioles_rev$BB_B < 400, "390", ifelse(orioles_rev$BB_B < 410, "400", ifelse(orioles_rev$BB_B < 420, "410", ifelse(orioles_rev$BB_B < 430, "420", ifelse(orioles_rev$BB_B < 440, "430", ifelse(orioles_rev$BB_B < 450, "440", ifelse(orioles_rev$BB_B < 460, "450", ifelse(orioles_rev$BB_B < 470, "460", ifelse(orioles_rev$BB_B < 480, "470", ifelse(orioles_rev$BB_B < 490, "480", ifelse(orioles_rev$BB_B < 500, "490", ifelse(orioles_rev$BB_B < 510, "500", ifelse(orioles_rev$BB_B < 520, "510", ifelse(orioles_rev$BB_B < 530, "520", ifelse(orioles_rev$BB_B < 540, "530", ifelse(orioles_rev$BB_B < 550, "540", ifelse(orioles_rev$BB_B < 560, "550", ifelse(orioles_rev$BB_B < 570, "560", ifelse(orioles_rev$BB_B < 580, "570", ifelse(orioles_rev$BB_B < 590, "580", ifelse(orioles_rev$BB_B < 600, "590", ifelse(orioles_rev$BB_B < 610, "600", ifelse(orioles_rev$BB_B < 620, "610", ifelse(orioles_rev$BB_B < 630, "620", ifelse(orioles_rev$BB_B < 640, "630", ifelse(orioles_rev$BB_B < 650, "640", ifelse(orioles_rev$BB_B < 660, "650", "660"))))))))))))))))))))))))))))
SO_B_cat = factor(ifelse(orioles_rev$SO_B < 900, "800", ifelse(orioles_rev$SO_B < 1000, "900", ifelse(orioles_rev$SO_B < 1100, "1000", ifelse(orioles_rev$SO_B < 1200, "1100", ifelse(orioles_rev$SO_B < 1300, "1200", ifelse(orioles_rev$SO_B < 1400, "1300", "1400")))))), levels=c("800","900","1000", "1100", "1200", "1300", "1400"))
BA_B_cat = factor(ifelse(orioles_rev$BA_B < .240, ".230", ifelse(orioles_rev$BA_B < .250, ".240", ifelse(orioles_rev$BA_B < .260, ".250", ifelse(orioles_rev$BA_B < .270, ".260", ifelse(orioles_rev$BA_B < .280, ".270", ".280"))))))
E_cat = factor(ifelse(orioles_rev$E < 60, "50", ifelse(orioles_rev$E < 70, "60", ifelse(orioles_rev$E < 80, "70", ifelse(orioles_rev$E < 90, "80", ifelse(orioles_rev$E < 100, "90", ifelse(orioles_rev$E < 110, "100", ifelse(orioles_rev$E < 120, "110", ifelse(orioles_rev$E < 130, "120", "130")))))))), levels=c("50","60","70", "80", "90", "100", "110", "120", "130"))
ERA_cat = factor(ifelse(orioles_rev$ERA < 4.0, "<4.00", ifelse(orioles_rev$ERA < 4.5, "4.00 - 4.50", ifelse(orioles_rev$ERA < 5.0, "4.50 - 5.00", ifelse(orioles_rev$ERA < 5.5, "5.00 - 5.50", "5.50 - 6.00")))))
HR_P_cat = factor(ifelse(orioles_rev$HR_P < 130, "120", ifelse(orioles_rev$HR_P < 140, "130", ifelse(orioles_rev$HR_P < 150, "140", ifelse(orioles_rev$HR_P < 160, "150", ifelse(orioles_rev$HR_P < 170, "160", ifelse(orioles_rev$HR_P < 180, "170", ifelse(orioles_rev$HR_P < 190, "180", ifelse(orioles_rev$HR_P < 200, "190", ifelse(orioles_rev$HR_P < 210, "200", ifelse(orioles_rev$HR_P < 220, "210", ifelse(orioles_rev$HR_P < 230, "220", ifelse(orioles_rev$HR_P < 240, "230", ifelse(orioles_rev$HR_P < 250, "240", ifelse(orioles_rev$HR_P < 260, "250", ifelse(orioles_rev$HR_P < 270, "260", ifelse(orioles_rev$HR_P < 280, "270", ifelse(orioles_rev$HR_P < 290, "280", ifelse(orioles_rev$HR_P < 300, "290", "300")))))))))))))))))))
BB_P_cat = factor(ifelse(orioles_rev$BB_P < 450, "440", ifelse(orioles_rev$BB_P < 460, "450", ifelse(orioles_rev$BB_P < 470, "460", ifelse(orioles_rev$BB_P < 480, "470", ifelse(orioles_rev$BB_P < 490, "480", ifelse(orioles_rev$BB_P < 500, "490", ifelse(orioles_rev$BB_P < 510, "500", ifelse(orioles_rev$BB_P < 520, "510", ifelse(orioles_rev$BB_P < 530, "520", ifelse(orioles_rev$BB_P < 540, "530", ifelse(orioles_rev$BB_P < 550, "540", ifelse(orioles_rev$BB_P < 560, "550", ifelse(orioles_rev$BB_P < 570, "560", ifelse(orioles_rev$BB_P < 580, "570", ifelse(orioles_rev$BB_P < 590, "580", ifelse(orioles_rev$BB_P < 600, "590", ifelse(orioles_rev$BB_P < 610, "600", ifelse(orioles_rev$BB_P < 620, "610", ifelse(orioles_rev$BB_P < 630, "620", ifelse(orioles_rev$BB_P < 640, "630", ifelse(orioles_rev$BB_P < 650, "640",  ifelse(orioles_rev$BB_P < 660, "650",  ifelse(orioles_rev$BB_P < 670, "660",  ifelse(orioles_rev$BB_P < 680, "670", ifelse(orioles_rev$BB_P < 690, "680", "690"))))))))))))))))))))))))))
SO_P_cat = factor(ifelse(orioles_rev$SO_P < 700, "600", ifelse(orioles_rev$SO_P < 800, "700", ifelse(orioles_rev$SO_P < 900, "800", ifelse(orioles_rev$SO_P < 1000, "900", ifelse(orioles_rev$SO_P < 1100, "1000", ifelse(orioles_rev$SO_P < 1200, "1100", "1200")))))), levels=c("600", "700", "800", "900", "1000", "1100", "1200"))
WHIP_cat = factor(ifelse(orioles_rev$WHIP < 1.3, "1.20", ifelse(orioles_rev$WHIP < 1.4, "1.30", ifelse(orioles_rev$WHIP < 1.5, "1.40", "1.50"))))

dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ R_Scored_cat, data=orioles_rev, main="W_L_Percentage v R_Scored", col='darkorange')
dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ BatAge_cat, data=orioles_rev, main="W_L_Percentage v BatAge", col='darkorange')
dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ PAge_cat, data=orioles_rev, main="W_L_Percentage v PAge", col='darkorange')
dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ NumBat_cat, data=orioles_rev, main="W_L_Percentage v NumBat", col='darkorange')
dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ NumP_cat, data=orioles_rev, main="W_L_Percentage v NumP", col='darkorange')
dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ Hits_B_cat, data=orioles_rev, main="W_L_Percentage v Hits_B", col='darkorange')
dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ HR_B_cat, data=orioles_rev, main="W_L_Percentage v HR_B", col='darkorange')
dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ SB_B_cat, data=orioles_rev, main="W_L_Percentage v SB_B", col='darkorange')
dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ BB_B_cat, data=orioles_rev, main="W_L_Percentage v BB_B", col='darkorange')
dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ SO_B_cat, data=orioles_rev, main="W_L_Percentage v SO_B", col='darkorange')
dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ BA_B_cat, data=orioles_rev, main="W_L_Percentage v BA_B", col='darkorange')
dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ E_cat, data=orioles_rev, main="W_L_Percentage v E", col='darkorange')
dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ ERA_cat, data=orioles_rev, main="W_L_Percentage v ERA", col='darkorange')
dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ HR_P_cat, data=orioles_rev, main="W_L_Percentage v HR_P", col='darkorange')
dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ BB_P_cat, data=orioles_rev, main="W_L_Percentage v BB_P", col='darkorange')
dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ SO_P_cat, data=orioles_rev, main="W_L_Percentage v SO_P", col='darkorange')
dev.new(height=400, width=400)
boxplot(W_L_Percentage ~ WHIP_cat, data=orioles_rev, main="W_L_Percentage v WHIP", col='darkorange')


#remove 2020, 1995, 1994 shortened seasons
orioles_rev <- orioles[-c(3, 28, 29), ]

#initial lm model
orioles.lm <- lm(W_L_Percentage ~ G+R_Scored+BatAge+PAge+NumBat+HR_B+SB_B+BB_B+SO_B+BA_B+E+ERA+HR_P+BB_P, data=orioles_rev)
orioles.lm$coefficients
anova(orioles.lm)
summary(orioles.lm)

#splom initial model
dev.new(height=800, width=800)
splom(~ orioles_rev[,c("W_L_Percentage","G","R_Scored","BatAge","PAge","NumBat","HR_B","SB_B","BB_B","SO_B","BA_B","E","ERA","HR_P","BB_P")],
      main="SPLOM Orioles Data 1984-2022 - Initial Model", pch=19, cex=.3, xlab=NULL, axis.text.cex = 0.1, varname.cex = 0.3, axis.line.tck = .3)

#vif initial model
vif(orioles.lm)

#correlation
cor(orioles[,c("G","R_Scored","BatAge","PAge","NumBat","HR_B","SB_B","BB_B","SO_B","BA_B","E","ERA","HR_P","BB_P")])

#residual and normal plots
dev.new(height=800, width=800)
lmplot(orioles.lm)


#subset
models <- leaps::regsubsets(W_L_Percentage ~ G+R_Scored+BatAge+PAge+NumBat+HR_B+SB_B+BB_B+SO_B+BA_B+E+ERA+HR_P+BB_P, data = orioles_rev, nbest=2)
models.summary <- summaryHH(models)
tmp <- (models.summary$cp < 10)
models.summary[tmp,]

#steps with full linear model
models.step <- step(orioles.lm)

#step1
orioles.step.lm <- lm(W_L_Percentage ~ R_Scored + SO_B + ERA, data=orioles_rev)
summary(orioles.step.lm)

vif(orioles.step.lm)

cor(orioles_rev[,c("R_Scored","SO_B","ERA")])

orioles.step.lm$coefficients

anova(orioles.step.lm)

#step2
orioles.step.lm2 <- lm(W_L_Percentage ~ R_Scored + ERA, data=orioles_rev)
summary(orioles.step.lm2)

vif(orioles.step.lm2)

cor(orioles_rev[,c("R_Scored","ERA")])

orioles.step.lm2$coefficients

anova(orioles.step.lm2)

#splom final
dev.new(height=400, width=400)
splom(~ orioles_rev[,c("W_L_Percentage","R_Scored","ERA")],
      axis.text.cex=.7, xlab=NULL,
      auto.key=list(space="right", border=TRUE))

#final residual
dev.new(height=400, width=400)
lmplot(orioles.step.lm2)

#case statistics
orioles.case.step <- case(orioles.step.lm2)
orioles.case.step.trellis <-
  plot(orioles.case.step, orioles.step.lm2, par.strip.text=list(cex=1.2),
       layout=c(3,3), main.cex=1.6, col=likertColor(2)[2], lwd=4)
dev.new(height=800, width=800)
orioles.case.step.trellis

#Shapiro-Wilk
shapiro.test(resid(orioles.step.lm2))

