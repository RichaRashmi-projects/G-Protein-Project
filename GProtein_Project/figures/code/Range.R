library(readr)

library("ggplot2")

out_path= "H:/uniprot/figures/images/G-box/FeoB_Unique_GBoxes.pdf"
out_path1= "H:/uniprot/figures/images/range/FeoB_Range.pdf"
in_path= "H:/uniprot/FeoB/FeoB_output.csv"

in_file <- read_table2(in_path, col_names = FALSE, locale = locale())
colnames(in_file)= c("ID", "G1_box", "Value","G3_box", "Value","G4_box", "Value","G5_box", "Value" )
in_file=na.exclude(in_file)

temp= as.matrix.data.frame(in_file) 

temp <- gsub('"', "", temp)
temp <- gsub(pattern = "u'", replacement = "", temp)
temp <- gsub(pattern = "'", replacement = "", temp)
temp <- gsub(pattern = ",", replacement = "", temp)
temp <- gsub(pattern = ")", replacement = "", temp)
temp <- gsub(pattern = "\\(", replacement = "", temp)

temp=as.data.frame(temp)
in_file= unique(temp) 


temp_range= in_file[,c(1,3,9)]
colnames(temp_range)= c("Protein","Min", "Max")
temp_range=unique(temp_range)

temp_range$Min= as.numeric(as.character(temp_range$Min))
temp_range$Max= as.numeric(as.character(temp_range$Max))

p <- ggplot(temp_range, aes(Protein))
p + geom_linerange(aes(ymin=Min ,ymax= Max),linetype=2)+
  theme(axis.text.x = element_blank())+
  geom_point(aes(y=Min),size=1,color="red")+
  geom_point(aes(y=Max),size=1,color="blue")+
  labs(y = "Range")

ggsave(out_path1, plot = last_plot(), scale = 1, width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)

write.csv(temp_range, "H:/uniprot/figures/data/range/FeoB_Range.csv")

####################################################################################

out_path= "H:/uniprot/figures/images/G-box/FeoB_Unique_GBoxes_new.pdf"
out_path1= "H:/uniprot/figures/images/range/FeoB_Range_new.pdf"
in_path= "H:/uniprot/FeoB/FeoB_output_new.csv"

in_file <- read_table2(in_path, col_names = FALSE, locale = locale())
colnames(in_file)= c("ID", "G1_box", "Value","G3_box", "Value","G4_box", "Value","G5_box", "Value" )
in_file=na.exclude(in_file)

temp= as.matrix.data.frame(in_file) 

temp <- gsub('"', "", temp)
temp <- gsub(pattern = "u'", replacement = "", temp)
temp <- gsub(pattern = "'", replacement = "", temp)
temp <- gsub(pattern = ",", replacement = "", temp)
temp <- gsub(pattern = ")", replacement = "", temp)
temp <- gsub(pattern = "\\(", replacement = "", temp)

temp=as.data.frame(temp)
in_file= unique(temp) 


temp_range= in_file[,c(1,3,9)]
colnames(temp_range)= c("Protein","Min", "Max")
temp_range=unique(temp_range)

temp_range$Min= as.numeric(as.character(temp_range$Min))
temp_range$Max= as.numeric(as.character(temp_range$Max))

p <- ggplot(temp_range, aes(Protein))
p + geom_linerange(aes(ymin=Min ,ymax= Max),linetype=2)+
  theme(axis.text.x = element_blank())+
  geom_point(aes(y=Min),size=1,color="red")+
  geom_point(aes(y=Max),size=1,color="blue")+
  labs(y = "Range")

ggsave(out_path1, plot = last_plot(), scale = 1, width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)

write.csv(temp_range, "H:/uniprot/figures/data/range/FeoB_Range_new.csv" )
          
          