library(arulesViz)
library(arules)

df <- read.csv("D:\\Facultate\\DM\\Hotel Reservations.csv", header = TRUE, sep = ",")
df


rules <- apriori(df, parameter = list(support = 0.005, confidence = 0.5, maxlen=3, target="rules"),)
rules

plot(rules)

plot(rules, method = "graph", limit = 20)
inspect(rules)
