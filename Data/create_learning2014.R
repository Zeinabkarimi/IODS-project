# Zeinab Karimi, Data wrangling 4.11.2020

#Read the full learning2014 data
learning2014 <- read.csv("https://www.mv.helsinki.fi/home/kvehkala/JYTmooc/JYTOPKYS3-data.txt", sep="\t", header=TRUE)

#about the data: 183 obs. of  60 variables
str(learning2014)
dim(learning2014)
head(learning2014)

install.packages("dplyr")
library(dplyr)
     
# questions related to deep, surface and strategic learning
deep_questions <- c("D03", "D11", "D19", "D27", "D07", "D14", "D22", "D30","D06",  "D15", "D23", "D31")
surface_questions <- c("SU02","SU10","SU18","SU26", "SU05","SU13","SU21","SU29","SU08","SU16","SU24","SU32")
strategic_questions <- c("ST01","ST09","ST17","ST25","ST04","ST12","ST20","ST28")


#Scale all combination variables to the original scales (by taking the mean)
deep_columns <- select(learning2014, one_of(deep_questions))
learning2014$deep <- rowMeans(deep_columns)

surface_columns <- select(learning2014, one_of(surface_questions))
learning2014$surfce <- rowMeans(surface_columns)

strategic_columns <- select(learning2014, one_of(strategic_questions))
learning2014$strategic <- rowMeans(strategic_columns)


dim(learning2014)

# analysis,  discovering the data: 183 observation with 63 variables
str(learning2014)
dim(learning2014)

#graphical overview:the distribution of each variable seem to be more or less similar
plot(learning2014$deep)
plot(learning2014$surfce)
plot(learning2014$strategic)

plot(learning2014$deep, learning2014$surfce)
plot( points, attitude, main= "points and attitude")

# Regression: exam points is the target (dependent) variable
regmodel <- lm(points, deep)

# print out a summary of the model
summary(regmodel)

