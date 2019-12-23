library(ggplot2)

before <- read.csv("H:/before.csv")
after <- read.csv("H:/negcontrol.csv")

before= before[order(before$Frequency),]
after= after[order(after$Frequency),]

b = ggplot(before, aes(x=Protein, y=Frequency)) + geom_point()+
  theme(axis.text.x = element_blank())

a = ggplot(after, aes(x=Protein, y=Frequency)) + geom_point()+
  theme(axis.text.x = element_blank())

p <- ggplot() +
  # blue plot
  geom_point(data=before, aes(x=Protein, y=Frequency), color="blue")+ 
  # red plot
  geom_point(data=after, aes(x=Protein, y=Frequency), color="red") +
    theme(axis.text.x = element_blank(), legend.position="bottom")
  

