library(readr)

source("H:/GProtein_Project/figures/code/ggseqlogo/R/heights.R")

in_path= "H:/GProtein_Project/Translational/Translational_output_new.csv"

in_file <- read_csv(in_path)

temp=as.data.frame(in_file)

temp_G1= unique(temp[,c(1,2,3)])  
temp_G3= unique(temp[,c(1,4,5)])
temp_G4= unique(temp[,c(1,6,7)])
temp_G5= unique(temp[,c(1,8,9)])

temp_G1$G1_box = as.character(temp_G1$`G1-box`)
temp_G3$G3_box = as.character(temp_G3$`G3-box`)
temp_G4$G4_box = as.character(temp_G4$`G4-box`)
temp_G5$G5_box = as.character(temp_G5$`G5-box`)

pwm_Translational_G1= makePFM(temp_G1$G1_box)
pwm_Translational_G3= makePFM(temp_G3$G3_box)
pwm_Translational_G4= makePFM(temp_G4$G4_box)
pwm_Translational_G5= makePFM(temp_G5$G5_box)

#entropy_G1= Entropy(pwm_Translational_G1, y = NULL)
#entropy_G3= Entropy(pwm_Translational_G3, y = NULL)
#entropy_G4= Entropy(pwm_Translational_G4, y = NULL)
#entropy_G5= Entropy(pwm_Translational_G5, y = NULL)

#entropy_all_Translational= c("Translational", entropy_G1, entropy_G3, entropy_G4, entropy_G5)


write.csv(pwm_Translational_G1, "H:/GProtein_Project/figures/data/Seq_Logo_PWM/pwm_Translational_G1.csv" )
write.csv(pwm_Translational_G3, "H:/GProtein_Project/figures/data/Seq_Logo_PWM/pwm_Translational_G3.csv" )
write.csv(pwm_Translational_G4, "H:/GProtein_Project/figures/data/Seq_Logo_PWM/pwm_Translational_G4.csv" )
write.csv(pwm_Translational_G5, "H:/GProtein_Project/figures/data/Seq_Logo_PWM/pwm_Translational_G5.csv" )

