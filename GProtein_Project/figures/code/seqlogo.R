require(ggplot2)
require(ggseqlogo)
require(readr)
require(ggpubr)

####################################################################################

Rab_SA_nomm<- read_csv("H:/GProtein_Project/Rab/Rab_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Rab_A_nomm<- read_csv("H:/GProtein_Project/Rab/Rab_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Rab_SA_mm<- read_csv("H:/GProtein_Project/Rab/Rab_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


Rab= do.call(rbind, list(Rab_SA_mm, Rab_A_nomm, Rab_SA_nomm))
Rab= unique(Rab)

Rab_plot= ggseqlogo( Rab$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for Rab Family")

#####################################################################################

Rac_SA_nomm<- read_csv("H:/GProtein_Project/Rac/Rac_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Rac_A_nomm<- read_csv("H:/GProtein_Project/Rac/Rac_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Rac_SA_mm<- read_csv("H:/GProtein_Project/Rac/Rac_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


Rac= do.call(rbind, list(Rac_SA_mm, Rac_A_nomm, Rac_SA_nomm))
Rac= unique(Rac)

Rac_plot= ggseqlogo( Rac$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for Rac Family")

#####################################################################################

Ran_SA_nomm<- read_csv("H:/GProtein_Project/Ran/Ran_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Ran_A_nomm<- read_csv("H:/GProtein_Project/Ran/Ran_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Ran_SA_mm<- read_csv("H:/GProtein_Project/Ran/Ran_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


Ran= do.call(rbind, list(Ran_SA_mm, Ran_A_nomm, Ran_SA_nomm))
Ran= unique(Ran)

Ran_plot= ggseqlogo( Ran$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for Ran Family")

#####################################################################################

Ras_SA_nomm<- read_csv("H:/GProtein_Project/Ras/Ras_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Ras_A_nomm<- read_csv("H:/GProtein_Project/Ras/Ras_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Ras_SA_mm<- read_csv("H:/GProtein_Project/Ras/Ras_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


Ras= do.call(rbind, list(Ras_SA_mm, Ras_A_nomm, Ras_SA_nomm))
Ras= unique(Ras)

Ras_plot= ggseqlogo( Ras$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for Ras Family")

#####################################################################################

Roc_SA_nomm<- read_csv("H:/GProtein_Project/Roc/Roc_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Roc_A_nomm<- read_csv("H:/GProtein_Project/Roc/Roc_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Roc_SA_mm<- read_csv("H:/GProtein_Project/Roc/Roc_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


Roc= do.call(rbind, list(Roc_SA_mm, Roc_A_nomm, Roc_SA_nomm))
Roc= unique(Roc)

Roc_plot= ggseqlogo( Roc$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for Roc Family")
#####################################################################################

Arf_SA_nomm<- read_csv("H:/GProtein_Project/Arf/Arf_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Arf_A_nomm<- read_csv("H:/GProtein_Project/Arf/Arf_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Arf_SA_mm<- read_csv("H:/GProtein_Project/Arf/Arf_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


Arf= do.call(rbind, list(Arf_SA_mm, Arf_A_nomm, Arf_SA_nomm))
Arf= unique(Arf)

Arf_plot= ggseqlogo( Arf$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for Arf Family")

#####################################################################################

AIG1_SA_nomm<- read_csv("H:/GProtein_Project/AIG1/AIG1_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
AIG1_A_nomm<- read_csv("H:/GProtein_Project/AIG1/AIG1_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
AIG1_SA_mm<- read_csv("H:/GProtein_Project/AIG1/AIG1_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


AIG1= do.call(rbind, list(AIG1_SA_mm, AIG1_A_nomm, AIG1_SA_nomm))
AIG1= unique(AIG1)

AIG1_plot= ggseqlogo( AIG1$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for AIG1 Family")

#####################################################################################

Era_SA_nomm<- read_csv("H:/GProtein_Project/Era/Era_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Era_A_nomm<- read_csv("H:/GProtein_Project/Era/Era_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Era_SA_mm<- read_csv("H:/GProtein_Project/Era/Era_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


Era= do.call(rbind, list(Era_SA_mm, Era_A_nomm, Era_SA_nomm))
Era= unique(Era)

Era_plot= ggseqlogo( Era$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for Era Family")

#####################################################################################
FeoB_SA_nomm<- read_csv("H:/GProtein_Project/FeoB/FeoB_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
FeoB_A_nomm<- read_csv("H:/GProtein_Project/FeoB/FeoB_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
FeoB_SA_mm<- read_csv("H:/GProtein_Project/FeoB/FeoB_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


FeoB= do.call(rbind, list(FeoB_SA_mm, FeoB_A_nomm, FeoB_SA_nomm))
FeoB= unique(FeoB)

FeoB_plot= ggseqlogo( FeoB$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for FeoB Family")

#####################################################################################

Hflx_SA_nomm<- read_csv("H:/GProtein_Project/Hflx/Hflx_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Hflx_A_nomm<- read_csv("H:/GProtein_Project/Hflx/Hflx_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Hflx_SA_mm<- read_csv("H:/GProtein_Project/Hflx/Hflx_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


Hflx= do.call(rbind, list(Hflx_SA_mm, Hflx_A_nomm, Hflx_SA_nomm))
Hflx= unique(Hflx)

Hflx_plot= ggseqlogo( Hflx$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for Hflx Family")

#####################################################################################

GB1_SA_nomm<- read_csv("H:/GProtein_Project/GB1/GB1_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
GB1_A_nomm<- read_csv("H:/GProtein_Project/GB1/GB1_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
GB1_SA_mm<- read_csv("H:/GProtein_Project/GB1/GB1_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


GB1= do.call(rbind, list(GB1_SA_mm, GB1_A_nomm, GB1_SA_nomm))
GB1= unique(GB1)

GB1_plot= ggseqlogo( GB1$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for GB1 Family")

#####################################################################################

Obg_SA_nomm<- read_csv("H:/GProtein_Project/Obg/Obg_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Obg_A_nomm<- read_csv("H:/GProtein_Project/Obg/Obg_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Obg_SA_mm<- read_csv("H:/GProtein_Project/Obg/Obg_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


Obg= do.call(rbind, list(Obg_SA_mm, Obg_A_nomm, Obg_SA_nomm))
Obg= unique(Obg)

Obg_plot= ggseqlogo( Obg$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for Obg Family")

#####################################################################################

Septin_SA_nomm<- read_csv("H:/GProtein_Project/Septin/Septin_SA_nomismatch.csv",col_types = cols(X1 = col_skip()))
Septin_A_nomm<- read_csv("H:/GProtein_Project/Septin/Septin_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Septin_SA_mm<- read_csv("H:/GProtein_Project/Septin/Septin_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


Septin= do.call(rbind, list(Septin_SA_mm, Septin_A_nomm))
Septin= unique(Septin)

Septin_plot= ggseqlogo( Septin$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for Septin Family")

#####################################################################################

EngB_SA_nomm<- read_csv("H:/GProtein_Project/EngB/EngB_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
EngB_A_nomm<- read_csv("H:/GProtein_Project/EngB/EngB_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
EngB_SA_mm<- read_csv("H:/GProtein_Project/EngB/EngB_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


EngB= do.call(rbind, list(EngB_SA_mm, EngB_A_nomm, EngB_SA_nomm))
EngB= unique(EngB)

EngB_plot= ggseqlogo( EngB$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for EngB Family")

#####################################################################################

EngA_SA_nomm<- read_csv("H:/GProtein_Project/EngA/EngA_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
EngA_A_nomm<- read_csv("H:/GProtein_Project/EngA/EngA_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
EngA_SA_mm<- read_csv("H:/GProtein_Project/EngA/EngA_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


EngA= do.call(rbind, list(EngA_SA_mm, EngA_A_nomm, EngA_SA_nomm))
EngA= unique(EngA)

EngA_plot= ggseqlogo( EngA$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for EngA Family")

#####################################################################################

Dynamin_SA_nomm<- read_csv("H:/GProtein_Project/Dynamin/Dynamin_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Dynamin_A_nomm<- read_csv("H:/GProtein_Project/Dynamin/Dynamin_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Dynamin_SA_mm<- read_csv("H:/GProtein_Project/Dynamin/Dynamin_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


Dynamin= do.call(rbind, list(Dynamin_SA_mm, Dynamin_A_nomm, Dynamin_SA_nomm))
Dynamin= unique(Dynamin)

Dynamin_plot= ggseqlogo( Dynamin$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for Dynamin Family")


#####################################################################################

tRme_SA_nomm<- read_csv("H:/GProtein_Project/tRme/tRme_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
tRme_A_nomm<- read_csv("H:/GProtein_Project/tRme/tRme_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
tRme_SA_mm<- read_csv("H:/GProtein_Project/tRme/tRme_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


tRme= do.call(rbind, list(tRme_SA_mm, tRme_A_nomm, tRme_SA_nomm))
tRme= unique(tRme)

tRme_plot= ggseqlogo( tRme$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for tRme Family")

#####################################################################################

Translational_SA_nomm<- read_csv("H:/GProtein_Project/Translational/Translational_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Translational_A_nomm<- read_csv("H:/GProtein_Project/Translational/Translational_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
Translational_SA_mm<- read_csv("H:/GProtein_Project/Translational/Translational_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


Translational= do.call(rbind, list(Translational_SA_mm, Translational_A_nomm, Translational_SA_nomm))
Translational= unique(Translational)

Translational_plot= ggseqlogo( Translational$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for Translational Family")

#####################################################################################

IRG_SA_nomm<- read_csv("H:/GProtein_Project/IRG/IRG_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
IRG_A_nomm<- read_csv("H:/GProtein_Project/IRG/IRG_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
IRG_SA_mm<- read_csv("H:/GProtein_Project/IRG/IRG_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


IRG= do.call(rbind, list(IRG_SA_mm, IRG_A_nomm))
IRG= unique(IRG)

IRG_plot= ggseqlogo( IRG$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for IRG Family")

#####################################################################################

SRP_SA_nomm<- read_csv("H:/GProtein_Project/SRP/SRP_SA_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
SRP_A_nomm<- read_csv("H:/GProtein_Project/SRP/SRP_A_nomismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))
SRP_SA_mm<- read_csv("H:/GProtein_Project/SRP/SRP_SA_mismatch.csv",col_types = cols(`G1-box` = col_skip(), `G3-box` = col_skip(), `G4-box` = col_skip(), Position = col_skip(), Position_1 = col_skip(), Position_2 = col_skip()))


SRP= do.call(rbind, list(SRP_SA_mm, SRP_A_nomm))
SRP= unique(SRP)

SRP_plot= ggseqlogo( SRP$`G5-box`, method = 'prob' ) + ggtitle("G5-Box Sequence for SRP Family")

#####################################################################################

#seq_logo= ggarrange(Rab_plot,Rac_plot,Ras_plot,Ran_plot,Roc_plot,Arf_plot,
#                   AIG1_plot,Era_plot,FeoB_plot,Hflx_plot,GB1_plot,EngB_plot,
#                   EngA_plot,Dynamin_plot,Obg_plot,Septin_plot,tRme_plot,
#                   ncol = 3, nrow = 6)


suppressMessages( require(cowplot) )
p1= plot_grid(Rab_plot,Rac_plot,Ras_plot,Ran_plot, ncol = 2,nrow = 2, align = 'v')
p2= plot_grid(Roc_plot,Arf_plot,AIG1_plot,Era_plot, ncol = 2,nrow = 2, align = 'v')
p3= plot_grid(FeoB_plot,Hflx_plot,GB1_plot,EngB_plot, ncol = 2,nrow = 2,  align = 'v')
p4= plot_grid(EngA_plot,Dynamin_plot,Obg_plot,Septin_plot, ncol = 2,nrow = 2, align = 'v')
p5= plot_grid(tRme_plot,Translational_plot, IRG_plot, SRP_plot, ncol = 2, nrow = 2, align = 'v')



ggsave("H:/GProtein_Project/figures/images/seq_logo1.pdf", plot = p1, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)
ggsave("H:/GProtein_Project/figures/images/seq_logo2.pdf", plot = p2, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)
ggsave("H:/GProtein_Project/figures/images/seq_logo3.pdf", plot = p3, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)
ggsave("H:/GProtein_Project/figures/images/seq_logo4.pdf", plot = p4, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)
ggsave("H:/GProtein_Project/figures/images/seq_logo5.pdf", plot = p5, 
       scale = 1,width=11, height=8.5, units = c("in", "cm", "mm"), dpi = 500)
