Entropy <- read_csv("H:/GProtein_Project/figures/data/Entropy.csv", 
                    col_types = cols(X10 = col_skip(), 
                    X7 = col_skip(), X8 = col_skip(), X9 = col_skip()), na = "NA")

Entropy = na.exclude(Entropy)

p1 = ggplot(data = Entropy, mapping = aes(x = Frequency, y = `G1 Entropy`)) +
  geom_point(aes(shape=Protein,color = Protein), size = 2)+ 
  scale_shape_manual(values=c(1:20))+
  scale_y_continuous(limits = c(0, 15))+
  labs(title = "No. of Proteins Vs Entropy of Protein Families in G1-Box ", x = "No. of Proteins", y= "Entropy" )
  
p2 = ggplot(data = Entropy, mapping = aes(x = Frequency, y = `G3 Entropy` )) +
  geom_point(aes(shape=Protein,color = Protein), size = 2)+
  scale_y_continuous(limits = c(0, 15))+ 
  scale_shape_manual(values=c(1:20))+ 
  labs( title = "No. of Proteins Vs Entropy of Protein Families in G3-Box ", x = "No. of Proteins", y= "Entropy" )

p3 = ggplot(data = Entropy, mapping = aes(x = Frequency, y = `G4 Entropy` )) +
  geom_point(aes(shape=Protein,color = Protein), size = 2)+
  scale_y_continuous(limits = c(0, 15))+ 
  scale_shape_manual(values=c(1:20))+
  labs( title = "No. of Proteins Vs Entropy of Protein Families in G4-Box ", x = "No. of Proteins", y= "Entropy" )

p4 = ggplot(data = Entropy, mapping = aes(x = Frequency, y = `G5 Entropy` )) +
  geom_point(aes(shape=Protein,color = Protein), size = 2)+
  scale_y_continuous(limits = c(0, 15))+ 
  scale_shape_manual(values=c(1:20))+ 
  labs( title = "No. of Proteins Vs Entropy of Protein Families in G5-Box ", x = "No. of Proteins", y= "Entropy" )

p5 = ggarrange(p1, p2, p3, p4,
               ncol = 2, nrow = 2, align = 'hv', common.legend = TRUE, legend = 'right',
               labels = c("A.","B.","C.","D."))


ggsave("H:/GProtein_Project/figures/images/Entropy_G1.pdf", plot = p1, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)
ggsave("H:/GProtein_Project/figures/images/Entropy_G3.pdf", plot = p2, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)
ggsave("H:/GProtein_Project/figures/images/Entropy_G4.pdf", plot = p3, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)
ggsave("H:/GProtein_Project/figures/images/Entropy_G5.pdf", plot = p4, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)



#########################################################################################
exclude= c("AIG1")

Entropy_sub1= subset(Entropy, Protein!="AIG1")

p1 = ggplot(data = Entropy_sub1, mapping = aes(x = Entropy_sub1$Frequency, y = Entropy_sub1$`G1 Entropy`)) +
  geom_point(aes(color = Entropy_sub1$Protein))+ 
  labs( color = "Protein Family", title = "No. of Proteins Vs Entropy of Protein Families in G1-Box ", x = "No. of Proteins", y= "Entropy" )

p2 = ggplot(data = Entropy_sub1, mapping = aes(x = Entropy_sub1$Frequency, y = Entropy_sub1$`G3 Entropy` )) +
  geom_point(aes(color = Entropy_sub1$Protein))+ 
  labs( color = "Protein Family", title = "No. of Proteins Vs Entropy of Protein Families in G3-Box ", x = "No. of Proteins", y= "Entropy" )

p3 = ggplot(data = Entropy_sub1, mapping = aes(x = Entropy_sub1$Frequency, y = Entropy_sub1$`G4 Entropy` )) +
  geom_point(aes(color = Entropy_sub1$Protein))+ 
  labs( color = "Protein Family", title = "No. of Proteins Vs Entropy of Protein Families in G4-Box ", x = "No. of Proteins", y= "Entropy" )

p4 = ggplot(data = Entropy_sub1, mapping = aes(x = Entropy_sub1$Frequency, y = Entropy_sub1$`G5 Entropy` )) +
  geom_point(aes(color = Entropy_sub1$Protein))+ 
  labs( color = "Protein Family", title = "No. of Proteins Vs Entropy of Protein Families in G5-Box ", x = "No. of Proteins", y= "Entropy" )


ggsave("H:/GProtein_Project/figures/images/Entropy_G1_WithoutAIG1.pdf", plot = p1, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)
ggsave("H:/GProtein_Project/figures/images/Entropy_G3_WithoutAIG1.pdf.pdf", plot = p2, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)
ggsave("H:/GProtein_Project/figures/images/Entropy_G4_WithoutAIG1.pdf.pdf", plot = p3, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)
ggsave("H:/GProtein_Project/figures/images/Entropy_G5_WithoutAIG1.pdf.pdf", plot = p4, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)

#########################################################################################

exclude= c("AIG1")

Entropy_sub1= subset(Entropy, Protein!="Translational")

p1 = ggplot(data = Entropy_sub1, mapping = aes(x = Entropy_sub1$Frequency, y = Entropy_sub1$`G1 Entropy`)) +
  geom_point(aes(color = Entropy_sub1$Protein))+ 
  labs( color = "Protein Family", title = "No. of Proteins Vs Entropy of Protein Families in G1-Box ", x = "No. of Proteins", y= "Entropy" )

p2 = ggplot(data = Entropy_sub1, mapping = aes(x = Entropy_sub1$Frequency, y = Entropy_sub1$`G3 Entropy` )) +
  geom_point(aes(color = Entropy_sub1$Protein))+ 
  labs( color = "Protein Family", title = "No. of Proteins Vs Entropy of Protein Families in G3-Box ", x = "No. of Proteins", y= "Entropy" )

p3 = ggplot(data = Entropy_sub1, mapping = aes(x = Entropy_sub1$Frequency, y = Entropy_sub1$`G4 Entropy` )) +
  geom_point(aes(color = Entropy_sub1$Protein))+ 
  labs( color = "Protein Family", title = "No. of Proteins Vs Entropy of Protein Families in G4-Box ", x = "No. of Proteins", y= "Entropy" )

p4 = ggplot(data = Entropy_sub1, mapping = aes(x = Entropy_sub1$Frequency, y = Entropy_sub1$`G5 Entropy` )) +
  geom_point(aes(color = Entropy_sub1$Protein))+ 
  labs( color = "Protein Family", title = "No. of Proteins Vs Entropy of Protein Families in G5-Box ", x = "No. of Proteins", y= "Entropy" )


ggsave("H:/GProtein_Project/figures/images/Entropy_G1_WithoutTranslational.pdf", plot = p1, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)
ggsave("H:/GProtein_Project/figures/images/Entropy_G3_WithoutTranslational.pdf.pdf", plot = p2, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)
ggsave("H:/GProtein_Project/figures/images/Entropy_G4_WithoutTranslational.pdf.pdf", plot = p3, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)
ggsave("H:/GProtein_Project/figures/images/Entropy_G5_WithoutTranslational.pdf.pdf", plot = p4, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)

