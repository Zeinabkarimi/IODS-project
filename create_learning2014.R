
 
#' title: "R Analysis IODS"
#' author: "Zeinab Karimi"
#' date: "10.11.2018"
#' ---
 #This is the second assingment for IODS course. We practice simple regression.
 
 lrn14 <- read.table("http://www.helsinki.fi/~kvehkala/JYTmooc/JYTOPKYS3-data.txt", sep="\t", header=TRUE)

dim(lrn14)
dim.data.frame(lrn14)
#there are 183 observation in the "lrn14" dataset, in addtion to 60 varaibles (including Id).

summary(lrn14)
str(lrn14)


#the first step taken to define a new dataset is to Creating some varaibles
deep <- lrn14$deep <- D03 + D11 + D19 + D27 + D07 + D14 + D22 + D30 + D06 + D15 + D23 + D31
surf <- lrn14$surf
strat <- lrn14$stra  



deep<- ((D03 + D11 + D19 + D27 + D07 + D14 + D22 + D30 + D06 + D15 + D23 + D31) / 12)

# defining the values of the variabels and combining some of varaibles to create deep, surface and strategic learning
deep <- (deep=c( "D03", "D11", "D19", "D27", "D07", "D14", "D22", "D30", "D06", "D15", "D23", "D31"))
surf <- (surf=c("SU02","SU10","SU18","SU26", "SU05","SU13","SU21","SU29","SU08","SU16","SU24","SU32"))
strat <- (strat=c("ST01","ST09","ST17","ST25","ST04","ST12","ST20","ST28"))

 
Workingdata <- data.frame (gender, age, attitude, deep, surf, strat)

Workingdata <- lrn14 [c(deep,surf, strat, gender, age, attitude)]



#the privious coding did not help me to define the variables so I try an new way:

lrn14 <- read.table("http://www.helsinki.fi/~kvehkala/JYTmooc/JYTOPKYS3-data.txt", sep="\t", header=TRUE)
lrn14$attitude <- lrn14$Attitude / 10
deep_questions <- c("D03", "D11", "D19", "D27", "D07", "D14", "D22", "D30","D06",  "D15", "D23", "D31")
lrn14$deep <- rowMeans(lrn14[, deep_questions])
surface_questions <- c("SU02","SU10","SU18","SU26", "SU05","SU13","SU21","SU29","SU08","SU16","SU24","SU32")
lrn14$surf <- rowMeans(lrn14[, surface_questions])
strategic_questions <- c("ST01","ST09","ST17","ST25","ST04","ST12","ST20","ST28")
lrn14$stra <- rowMeans(lrn14[, strategic_questions])

# choose the 5 variables accordingly (age, gender, deep, attitude, stra and surf)

keep_columns <- c("gender","Age","attitude", "deep", "str", "surf", "Points")



summary(lrn14)
dim (lrn14)
# select the 'keep_columns' to create a new dataset
Mydata <- lrn14[,c(57,59,60,61,62,63,64)]

# I coundn't attend the last class on Tuesday and faced with lots of difficulties to understand R language. This migh sound crazy but I spent three full days to understand what I need to do. I tried to get help form discussion platform in the blog but no sucess. I cannot aford more than this. I am considering to drop the course...

