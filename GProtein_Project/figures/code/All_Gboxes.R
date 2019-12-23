library(ggseqlogo)
library(ggpubr)

in_path= "H:/GProtein_Project/Ras/Ras_output_new.csv"

in_file <- read.csv(in_path)

temp=as.data.frame(in_file)

temp_G1= unique(temp[,c(1,2,3)])  
temp_G3= unique(temp[,c(1,4,5)])
temp_G4= unique(temp[,c(1,6,7)])
temp_G5= unique(temp[,c(1,8,9)])

Ras_plot_G1= ggseqlogo( as.character(temp_G1$G1.box), method = 'prob' ) + ggtitle("G1-Box of Ras")
Ras_plot_G3= ggseqlogo( as.character(temp_G3$G3.box), method = 'prob' ) + ggtitle("G3-Box of Ras")
Ras_plot_G4= ggseqlogo( as.character(temp_G4$G4.box), method = 'prob' ) + ggtitle("G4-Box of Ras")
Ras_plot_G5= ggseqlogo( as.character(temp_G5$G5.box), method = 'prob' ) + ggtitle("G5-Box of Ras")

suppressMessages( require(cowplot) )
p1= plot_grid(Ras_plot_G1,Ras_plot_G3,Ras_plot_G4,Ras_plot_G5, ncol = 2, align = 'v')

#ggsave("H:/GProtein_Project/figures/images/Seq_logo/All_Gboxes/seq_logo_Translational.pdf", plot = p1, 
       #scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)

##############################################################################################

in_path= "H:/GProtein_Project/Era/Era_output_new.csv"

in_file <- read.csv(in_path)

temp=as.data.frame(in_file)

temp_G1= unique(temp[,c(1,2,3)])  
temp_G3= unique(temp[,c(1,4,5)])
temp_G4= unique(temp[,c(1,6,7)])
temp_G5= unique(temp[,c(1,8,9)])

Era_plot_G1= ggseqlogo( as.character(temp_G1$G1.box), method = 'prob' ) + ggtitle("G1-Box of Era")
Era_plot_G3= ggseqlogo( as.character(temp_G3$G3.box), method = 'prob' ) + ggtitle("G3-Box of Era")
Era_plot_G4= ggseqlogo( as.character(temp_G4$G4.box), method = 'prob' ) + ggtitle("G4-Box of Era")
Era_plot_G5= ggseqlogo( as.character(temp_G5$G5.box), method = 'prob' ) + ggtitle("G5-Box of Era")

suppressMessages( require(cowplot) )
p2= plot_grid(Era_plot_G1,Era_plot_G3,Era_plot_G4,Era_plot_G5, ncol = 2, align = 'v')

#############################################################################################

in_path= "H:/GProtein_Project/Translational/Translational_output_new.csv"

in_file <- read.csv(in_path)

temp=as.data.frame(in_file)

temp_G1= unique(temp[,c(1,2,3)])  
temp_G3= unique(temp[,c(1,4,5)])
temp_G4= unique(temp[,c(1,6,7)])
temp_G5= unique(temp[,c(1,8,9)])

Translational_plot_G1= ggseqlogo( as.character(temp_G1$G1.box), method = 'prob' ) + ggtitle("G1-Box of Translational")
Translational_plot_G3= ggseqlogo( as.character(temp_G3$G3.box), method = 'prob' ) + ggtitle("G3-Box of Translational")
Translational_plot_G4= ggseqlogo( as.character(temp_G4$G4.box), method = 'prob' ) + ggtitle("G4-Box of Translational")
Translational_plot_G5= ggseqlogo( as.character(temp_G5$G5.box), method = 'prob' ) + ggtitle("G5-Box of Translational")

suppressMessages( require(cowplot) )
p3= plot_grid(Translational_plot_G1,Translational_plot_G3,Translational_plot_G4,Translational_plot_G5, ncol = 2, align = 'v')

###############################################################################################

p4 = ggarrange(Ras_plot_G1,Ras_plot_G3,Ras_plot_G4,Ras_plot_G5,
               Era_plot_G1,Era_plot_G3,Era_plot_G4,Era_plot_G5,
               Translational_plot_G1,Translational_plot_G3,Translational_plot_G4,Translational_plot_G5,
               ncol = 4, nrow = 3, align = 'hv', common.legend = TRUE, legend = 'bottom',
               labels = c("A.","","","","B.","","","","C.","","",""))