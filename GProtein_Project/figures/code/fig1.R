library(readr)
GTP_available <- read_csv("H:/uniprot/figures/data/GTP available.csv", 
                          col_names = FALSE, col_types = cols(X2 = col_skip()))


scm = function(palette=cols) {
  scale_color_manual(values=palette, na.value="black")
}

colnames(GTP_available)= c("G-Protein Families", "G-Box", "Sequence")
#GTP_available[is.na(GTP_available)]<-"unknown"
#GTP_available <- GTP_available[order(GTP_available$`G-Box`),] 

ggplot(GTP_available, aes(fill=Sequence, y=`G-Box`, x=`G-Protein Families`)) + 
  geom_bar( position="dodge", stat="identity")+ theme(axis.text.x=element_text(angle=90, hjust=1))

ggplot(GTP_available, aes(fill= factor(GTP_available$Sequence), y=GTP_available$`G-Box`, x=GTP_available$GTP)) + 
  geom_bar( stat="identity")+ theme(axis.text.x=element_text(angle=90, hjust=1))

ggplot(data = GTP_available, aes( x = GTP , fill = Sequence ) ) +
  geom_bar( )+ theme(axis.text.x=element_text(angle=90, hjust=1))