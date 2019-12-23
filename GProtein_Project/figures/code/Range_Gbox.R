library(readr)

library("ggplot2")
library(ggpubr)

out_path= "H:/GProtein_Project/figures/images/G-box/Ras_Unique_GBoxes.pdf"
out_path1= "H:/GProtein_Project/figures/images/range/Ras_range.pdf"
in_path= "H:/GProtein_Project/Ras/Ras_output_wo_bias.csv"

in_file <- read.csv(in_path)

temp=as.data.frame(in_file)

temp[,10]="G1"
temp[,11]="G3"
temp[,12]="G4"
temp[,13]="G5"
temp=temp[,c(1,2,3,10,4,5,11,6,7,12,8,9,13)]

x=temp[,c(1,2:4)]
y=temp[,c(1,5:7)]
z=temp[,c(1,8:10)]
w=temp[,c(1,11:13)]
colnames(x)= c('ID','Sequence', 'value', 'box')
colnames(y)= c('ID','Sequence', 'value', 'box')
colnames(z)= c('ID','Sequence', 'value', 'box')
colnames(w)= c('ID','Sequence', 'value', 'box')

temp <- rbind(x,y, z, w)
temp= unique(temp)
temp.agg= aggregate(value ~ Sequence+box, temp, function(x) length(unique(x)))
temp.agg['Serial']= as.integer(row.names(temp.agg))

pg_ras <- ggplot(temp.agg, aes(Serial, value )) + 
  geom_point(aes(colour = factor(box)),size = 1.5)+
  scale_y_continuous(limits = c(0, 20))+ 
  theme( legend.position="right", axis.title.y = element_blank())+
  scale_fill_continuous(guide = guide_legend())+
  xlab("Unique G-Boxes of Ras family")+labs(color = "G-Boxes")+
  ylab("Frequency")+theme_bw()
# + ylab("Frequency of the occurence of unique G-boxes"

start=1
mid= as.integer(nrow(temp.agg)/2)
end= nrow(temp.agg)
pg_ras <- pg_ras +scale_x_continuous(breaks = c(start, mid, end))#+scale_x_continuous(limits = c(0, 470))

ggsave(out_path, plot = last_plot(), scale = 1, width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)


temp_range= in_file[,c(1,3,9)]
colnames(temp_range)= c("Protein","Min", "Max")
temp_range=unique(temp_range)

temp_range$Min= as.numeric(as.character(temp_range$Min))
temp_range$Max= as.numeric(as.character(temp_range$Max))

p_ras <- ggplot(temp_range, aes(Protein))
p_ras <- p_ras + geom_linerange(aes(ymin=Min ,ymax= Max),linetype=2)+
  geom_point(aes(y=Min),size=1,color="red")+
  geom_point(aes(y=Max),size=1,color="blue")+
  scale_y_continuous(limits = c(0, 300))+
  labs(y = "range", x= "Proteins in Ras")+theme_bw()+
  theme(axis.text.x = element_blank(),axis.ticks.x = element_blank())

ggsave(out_path1, plot = last_plot(), scale = 1, width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)

write.csv(temp.agg, "H:/GProtein_Project/figures/data/G-box/Ras_Unique_GBoxes.csv" )
write.csv(temp_range, "H:/GProtein_Project/figures/data/range/Ras_range.csv")

####################################################################################

out_path= "H:/GProtein_Project/figures/images/G-box/Ras_Unique_GBoxes_new.pdf"
out_path1= "H:/GProtein_Project/figures/images/range/Ras_range_new.pdf"
in_path= "H:/GProtein_Project/Ras/Ras_output_new.csv"

in_file <- read.csv(in_path)

temp=as.data.frame(in_file)

temp[,10]="G1"
temp[,11]="G3"
temp[,12]="G4"
temp[,13]="G5"
temp=temp[,c(1,2,3,10,4,5,11,6,7,12,8,9,13)]

x=temp[,c(1,2:4)]
y=temp[,c(1,5:7)]
z=temp[,c(1,8:10)]
w=temp[,c(1,11:13)]
colnames(x)= c('ID','Sequence', 'value', 'box')
colnames(y)= c('ID','Sequence', 'value', 'box')
colnames(z)= c('ID','Sequence', 'value', 'box')
colnames(w)= c('ID','Sequence', 'value', 'box')

temp <- rbind(x,y, z, w)
temp= unique(temp)
temp.agg= aggregate(value ~ Sequence+box, temp, function(x) length(unique(x)))
temp.agg['Serial']= as.integer(row.names(temp.agg))

pg_ras_new <- ggplot(temp.agg, aes(Serial , value )) + 
  geom_point(aes(colour = factor(box)),size = 1.5)+
  scale_y_continuous(limits = c(0, 20))+ 
  theme( legend.position="right", axis.title.y = element_blank())+
  scale_fill_continuous(guide = guide_legend())+
  xlab("Unique G-Boxes of Ras family")+labs(color = "G-Boxes")+
  ylab("Frequency")+theme_bw()
# + ylab("Frequency of the occurence of unique G-boxes"


pg_ras_new <- pg_ras_new + scale_x_continuous(breaks = c(start, nrow(temp.agg), end), limits = c(0, end))

ggsave(out_path, plot = last_plot(), scale = 1, width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)


temp_range= in_file[,c(1,3,9)]
colnames(temp_range)= c("Protein","Min", "Max")
temp_range=unique(temp_range)

temp_range$Min= as.numeric(as.character(temp_range$Min))
temp_range$Max= as.numeric(as.character(temp_range$Max))

p_ras_new <- ggplot(temp_range, aes(Protein))
p_ras_new <- p_ras_new + geom_linerange(aes(ymin=Min ,ymax= Max),linetype=2)+
  theme(axis.text.x = element_blank())+
  geom_point(aes(y=Min),size=1,color="red")+
  geom_point(aes(y=Max),size=1,color="blue")+
  scale_y_continuous(limits = c(0, 300))+
  labs(y = "range", x= "Proteins in Ras")+theme_bw()+
  theme(axis.text.x = element_blank(),axis.ticks.x = element_blank())


ggsave(out_path1, plot = last_plot(), scale = 1, width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)

write.csv(temp.agg, "H:/GProtein_Project/figures/data/G-box/Ras_Unique_GBoxes_new.csv" )
write.csv(temp_range, "H:/GProtein_Project/figures/data/range/Ras_range_new.csv" )

##################################################################################################

out_path= "H:/GProtein_Project/figures/images/G-box/Era_Unique_GBoxes.pdf"
out_path1= "H:/GProtein_Project/figures/images/range/Era_range.pdf"
in_path= "H:/GProtein_Project/Era/Era_output_wo_bias.csv"

in_file <- read.csv(in_path)

temp=as.data.frame(in_file)

temp[,10]="G1"
temp[,11]="G3"
temp[,12]="G4"
temp[,13]="G5"
temp=temp[,c(1,2,3,10,4,5,11,6,7,12,8,9,13)]

x=temp[,c(1,2:4)]
y=temp[,c(1,5:7)]
z=temp[,c(1,8:10)]
w=temp[,c(1,11:13)]
colnames(x)= c('ID','Sequence', 'value', 'box')
colnames(y)= c('ID','Sequence', 'value', 'box')
colnames(z)= c('ID','Sequence', 'value', 'box')
colnames(w)= c('ID','Sequence', 'value', 'box')

temp <- rbind(x,y, z, w)
temp= unique(temp)
temp.agg= aggregate(value ~ Sequence+box, temp, function(x) length(unique(x)))
temp.agg['Serial']= as.integer(row.names(temp.agg))

pg_era <- ggplot(temp.agg, aes(Serial , value )) + 
  geom_point(aes(colour = factor(box)),size = 1.5)+
  scale_y_continuous(limits = c(0, 25))+ 
  theme( legend.position="right", axis.title.y = element_blank())+
  scale_fill_continuous(guide = guide_legend())+
  xlab("Unique G-Boxes of Era family")+labs(color = "G-Boxes")+
  ylab("Frequency")+theme_bw()
# + ylab("Frequency of the occurence of unique G-boxes"

start=1
mid= as.integer(nrow(temp.agg)/2)
end= nrow(temp.agg)
pg_era <- pg_era +scale_x_continuous(breaks = c(start, mid, end))#+scale_x_continuous(limits = c(0, 470))

ggsave(out_path, plot = last_plot(), scale = 1, width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)


temp_range= in_file[,c(1,3,9)]
colnames(temp_range)= c("Protein","Min", "Max")
temp_range=unique(temp_range)

temp_range$Min= as.numeric(as.character(temp_range$Min))
temp_range$Max= as.numeric(as.character(temp_range$Max))

p_era <- ggplot(temp_range, aes(Protein))
p_era <- p_era + geom_linerange(aes(ymin=Min ,ymax= Max),linetype=2)+
  theme(axis.text.x = element_blank())+
  geom_point(aes(y=Min),size=1,color="red")+
  geom_point(aes(y=Max),size=1,color="blue")+
  scale_y_continuous(limits = c(0, 300))+
  labs(y = "range", x= "Proteins in Era")+theme_bw()+
  theme(axis.text.x = element_blank(),axis.ticks.x = element_blank())

ggsave(out_path1, plot = last_plot(), scale = 1, width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)

write.csv(temp.agg, "H:/GProtein_Project/figures/data/G-box/Era_Unique_GBoxes.csv" )
write.csv(temp_range, "H:/GProtein_Project/figures/data/range/Era_range.csv")

####################################################################################

out_path= "H:/GProtein_Project/figures/images/G-box/Era_Unique_GBoxes_new.pdf"
out_path1= "H:/GProtein_Project/figures/images/range/Era_range_new.pdf"
in_path= "H:/GProtein_Project/Era/Era_output_new.csv"

in_file <- read.csv(in_path)

temp=as.data.frame(in_file)

temp[,10]="G1"
temp[,11]="G3"
temp[,12]="G4"
temp[,13]="G5"
temp=temp[,c(1,2,3,10,4,5,11,6,7,12,8,9,13)]

x=temp[,c(1,2:4)]
y=temp[,c(1,5:7)]
z=temp[,c(1,8:10)]
w=temp[,c(1,11:13)]
colnames(x)= c('ID','Sequence', 'value', 'box')
colnames(y)= c('ID','Sequence', 'value', 'box')
colnames(z)= c('ID','Sequence', 'value', 'box')
colnames(w)= c('ID','Sequence', 'value', 'box')

temp <- rbind(x,y, z, w)
temp= unique(temp)
temp.agg= aggregate(value ~ Sequence+box, temp, function(x) length(unique(x)))
temp.agg['Serial']= as.integer(row.names(temp.agg))

pg_era_new <- ggplot(temp.agg, aes(Serial , value )) + 
  geom_point(aes(colour = factor(box)),size = 1.5)+
  scale_y_continuous(limits = c(0, 25))+ 
  theme( legend.position="right", axis.title.y = element_blank())+
  scale_fill_continuous(guide = guide_legend())+
  xlab("Unique G-Boxes of Era family")+labs(color = "G-Boxes")+
  ylab("Frequency")+theme_bw()
# + ylab("Frequency of the occurence of unique G-boxes"

pg_era_new <- pg_era_new+ scale_x_continuous(breaks = c(start, nrow(temp.agg), end), limits = c(0, end))

ggsave(out_path, plot = last_plot(), scale = 1, width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)


temp_range= in_file[,c(1,3,9)]
colnames(temp_range)= c("Protein","Min", "Max")
temp_range=unique(temp_range)

temp_range$Min= as.numeric(as.character(temp_range$Min))
temp_range$Max= as.numeric(as.character(temp_range$Max))

p_era_new <- ggplot(temp_range, aes(Protein))
p_era_new <- p_era_new + geom_linerange(aes(ymin=Min ,ymax= Max),linetype=2)+
  theme(axis.text.x = element_blank())+
  geom_point(aes(y=Min),size=1,color="red")+
  geom_point(aes(y=Max),size=1,color="blue")+
  scale_y_continuous(limits = c(0, 300))+
  labs(y = "range", x= "Proteins in Era")+theme_bw()+
  theme(axis.text.x = element_blank(),axis.ticks.x = element_blank())


ggsave(out_path1, plot = last_plot(), scale = 1, width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)

write.csv(temp.agg, "H:/GProtein_Project/figures/data/G-box/Era_Unique_GBoxes_new.csv" )
write.csv(temp_range, "H:/GProtein_Project/figures/data/range/Era_range_new.csv" )

###########################################################################################

out_path= "H:/GProtein_Project/figures/images/G-box/Translational_Unique_GBoxes.pdf"
out_path1= "H:/GProtein_Project/figures/images/range/Translational_range.pdf"
in_path= "H:/GProtein_Project/Translational/Translational_output_wo_bias.csv"

in_file <- read.csv(in_path)

temp=as.data.frame(in_file)

temp[,10]="G1"
temp[,11]="G3"
temp[,12]="G4"
temp[,13]="G5"
temp=temp[,c(1,2,3,10,4,5,11,6,7,12,8,9,13)]

x=temp[,c(1,2:4)]
y=temp[,c(1,5:7)]
z=temp[,c(1,8:10)]
w=temp[,c(1,11:13)]
colnames(x)= c('ID','Sequence', 'value', 'box')
colnames(y)= c('ID','Sequence', 'value', 'box')
colnames(z)= c('ID','Sequence', 'value', 'box')
colnames(w)= c('ID','Sequence', 'value', 'box')

temp <- rbind(x,y, z, w)
temp= unique(temp)
temp.agg= aggregate(value ~ Sequence+box, temp, function(x) length(unique(x)))
temp.agg['Serial']= as.integer(row.names(temp.agg))

pg_translational <- ggplot(temp.agg, aes(Serial , value )) + 
  geom_point(aes(colour = factor(box)),size = 1.5)+
  scale_y_continuous(limits = c(0, 350))+ 
  theme( legend.position="right", axis.title.y = element_blank())+
  scale_fill_continuous(guide = guide_legend())+
  xlab("Unique G-Boxes of Translational family") +labs(color = "G-Boxes")+
  ylab("Frequency")+theme_bw()
# + ylab("Frequency of the occurence of unique G-boxes"

start=1
mid= as.integer(nrow(temp.agg)/2)
end= nrow(temp.agg)
pg_translational <- pg_translational+scale_x_continuous(breaks = c(start, mid, end))#+scale_x_continuous(limits = c(0, 470))

ggsave(out_path, plot = last_plot(), scale = 1, width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)


temp_range= in_file[,c(1,3,9)]
colnames(temp_range)= c("Protein","Min", "Max")
temp_range=unique(temp_range)

temp_range$Min= as.numeric(as.character(temp_range$Min))
temp_range$Max= as.numeric(as.character(temp_range$Max))

p_translational <- ggplot(temp_range, aes(Protein))
p_translational <- p_translational  + geom_linerange(aes(ymin=Min ,ymax= Max),linetype=2)+
  theme(axis.text.x = element_blank())+
  geom_point(aes(y=Min),size=1,color="red")+
  geom_point(aes(y=Max),size=1,color="blue")+
  scale_y_continuous(limits = c(0, 1250))+
  labs(y = "range", x= "Proteins in Translational")+theme_bw()+
  theme(axis.text.x = element_blank(),axis.ticks.x = element_blank())

ggsave(out_path1, plot = last_plot(), scale = 1, width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)

write.csv(temp.agg, "H:/GProtein_Project/figures/data/G-box/Translational_Unique_GBoxes.csv" )
write.csv(temp_range, "H:/GProtein_Project/figures/data/range/Translational_range.csv")

####################################################################################

out_path= "H:/GProtein_Project/figures/images/G-box/Translational_Unique_GBoxes_new.pdf"
out_path1= "H:/GProtein_Project/figures/images/range/Translational_range_new.pdf"
in_path= "H:/GProtein_Project/Translational/Translational_output_new.csv"

in_file <- read.csv(in_path)

temp=as.data.frame(in_file)

temp[,10]="G1"
temp[,11]="G3"
temp[,12]="G4"
temp[,13]="G5"
temp=temp[,c(1,2,3,10,4,5,11,6,7,12,8,9,13)]

x=temp[,c(1,2:4)]
y=temp[,c(1,5:7)]
z=temp[,c(1,8:10)]
w=temp[,c(1,11:13)]
colnames(x)= c('ID','Sequence', 'value', 'box')
colnames(y)= c('ID','Sequence', 'value', 'box')
colnames(z)= c('ID','Sequence', 'value', 'box')
colnames(w)= c('ID','Sequence', 'value', 'box')

temp <- rbind(x,y, z, w)
temp= unique(temp)
temp.agg= aggregate(value ~ Sequence+box, temp, function(x) length(unique(x)))
temp.agg['Serial']= as.integer(row.names(temp.agg))

pg_translational_new <- ggplot(temp.agg, aes(Serial , value )) + 
  geom_point(aes(colour = factor(box)),size = 1.5)+
  scale_y_continuous(limits = c(0, 350))+ 
  theme( legend.position="right", axis.title.y = element_blank())+
  scale_fill_continuous(guide = guide_legend())+
  xlab("Unique G-Boxes of Translational family") +labs(color = "G-Boxes")+
  ylab("Frequency")+theme_bw()
  # + ylab("Frequency of the occurence of unique G-boxes"


pg_translational_new <- pg_translational_new + scale_x_continuous(breaks = c(start, nrow(temp.agg), end), limits = c(0, end))

ggsave(out_path, plot = last_plot(), scale = 1, width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)


temp_range= in_file[,c(1,3,9)]
colnames(temp_range)= c("Protein","Min", "Max")
temp_range=unique(temp_range)

temp_range$Min= as.numeric(as.character(temp_range$Min))
temp_range$Max= as.numeric(as.character(temp_range$Max))

p_translational_new <- ggplot(temp_range, aes(Protein))
p_translational_new <- p_translational_new + geom_linerange(aes(ymin=Min ,ymax= Max),linetype=2)+
  theme(axis.text.x = element_blank())+
  geom_point(aes(y=Min),size=1,color="red")+
  geom_point(aes(y=Max),size=1,color="blue")+
  scale_y_continuous(limits = c(0, 1250))+
  labs(y = "range", x= "Proteins in Translational")+theme_bw()+
  theme(axis.text.x = element_blank(),axis.ticks.x = element_blank())


ggsave(out_path1, plot = last_plot(), scale = 1, width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)

write.csv(temp.agg, "H:/GProtein_Project/figures/data/G-box/Translational_Unique_GBoxes_new.csv" )
write.csv(temp_range, "H:/GProtein_Project/figures/data/range/Translational_range_new.csv" )

###########################################################################################


figure1 <- ggarrange(p_ras, p_era,  p_translational ,
          ncol = 1, nrow = 3 , vjust = 18, align = c("v"))

figure1 <- annotate_figure(figure1, top = text_grob("A."),)

figure2 <- ggarrange(p_ras_new, p_era_new,  p_translational_new ,
                    ncol = 1, nrow = 3, vjust = 18, align = c("v"))
figure2 <- annotate_figure(figure2,top = text_grob("B."),)

figure <- ggarrange( figure1, figure2, labels = c("", ""))
figure

#ggsave("H:/", plot = last_plot(), scale = 1, width= 7 , units = c("in", "cm", "mm"), dpi = 500)
############################################################################################

figureg1 <- ggarrange(pg_ras,pg_ras_new,
                      pg_era, pg_era_new,
                      pg_translational,  pg_translational_new,
                      ncol = 2, nrow = 3, common.legend = TRUE, legend="bottom",
                      labels = c("A. ", "B. ","","","",""))
  
