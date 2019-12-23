in_path1= "H:/uniprot/Era/Era_output.csv"
in_path2= "H:/uniprot/Era/Era_output_new.csv"

in_file1 <- read_table2(in_path1, col_names = FALSE, locale = locale())
in_file2 <- read_table2(in_path2, col_names = FALSE, locale = locale())

colnames(in_file1)= c("ID", "G1_box", "Value","G3_box", "Value","G4_box", "Value","G5_box", "Value" )
colnames(in_file2)= c("ID", "G1_box", "Value","G3_box", "Value","G4_box", "Value","G5_box", "Value" )

in_file1=na.exclude(in_file1)
in_file2=na.exclude(in_file2)

temp1= as.matrix.data.frame(in_file1)
temp2= as.matrix.data.frame(in_file2) 

temp1 <- gsub('"', "", temp1)
temp1 <- gsub(pattern = "u'", replacement = "", temp1)
temp1 <- gsub(pattern = "'", replacement = "", temp1)
temp1 <- gsub(pattern = ",", replacement = "", temp1)
temp1 <- gsub(pattern = ")", replacement = "", temp1)
temp1 <- gsub(pattern = "\\(", replacement = "", temp1)
temp1 =as.data.frame(temp1)

temp2 <- gsub('"', "", temp2)
temp2 <- gsub(pattern = "u'", replacement = "", temp2)
temp2 <- gsub(pattern = "'", replacement = "", temp2)
temp2 <- gsub(pattern = ",", replacement = "", temp2)
temp2 <- gsub(pattern = ")", replacement = "", temp2)
temp2 <- gsub(pattern = "\\(", replacement = "", temp2)
temp2 =as.data.frame(temp2)

ID_known_before= temp1[temp1$ID=="P06616",]
ID_known_after= temp2[temp2$ID=="P06616",]

ID_unknown_before= temp1[temp1$ID=="Q8NNB9",]
ID_unknown_after= temp2[temp2$ID=="Q8NNB9",]
