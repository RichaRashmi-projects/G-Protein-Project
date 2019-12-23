# -*- coding: utf-8 -*-
"""
Created on Wed Aug 28 14:38:44 2019

@author: Richa Rashmi
"""

import pandas as pd
import random


# all G boxes
def match(x,y, mm):
        mismatch = 0
        for i in range(len(x)):
                if (x[i] == 'X' or x[i] == y[i]):
                        pass
                else:
                        mismatch += 1
        if(mismatch <= mm):
                return True
        else:
                return False
        
def H(protein_id, protein,x1,x2,x3,x4, mm1, mm2, mm3, mm4, min13, min34, min45, max13, max34, max45):
        pL1=[]
        pL2=[]
        pL3=[]
        pL4=[]
        L1=[]
        L2=[]
        L3=[]
        L4=[]
        for i in range(len(protein)-len(x1)):
                if(match(x1, protein[i:i+len(x1)],mm1) == True):
#                       global L1
                        pL1=pL1 + [i]
                        L1 = L1+[protein[i:i+len(x1)]]
        #print "L1 = ", pL1,L1
        for j in range(len(protein)-len(x2)):
                if (match(x2, protein[j:j+len(x2)],mm2) == True):
#                       global L2
                        pL2=pL2+[j]
                        L2 = L2+[protein[j:j+len(x2)]]
        #print "L2 = ", pL2,L2
        for k in range(len(protein)-len(x3)):
                if (match(x3, protein[k:k+len(x3)],mm3) == True):
#                       global L3
                        pL3=pL3+[k]
                        L3 = L3+[protein[k:k+len(x3)]]
        #print "L3 = ", pL3,L3
        for l in range(len(protein)-len(x4)):
                if (match(x4, protein[l:l+len(x4)],mm4) == True):
#                       global L3
                        pL4=pL4+[l]
                        L4 = L4+[protein[l:l+len(x4)]]
        candidates =[]                
        for i in range(len(pL1)):
                for j in range(len(pL2)):
                        for k in range(len(pL3)):
                                for l in range(len(pL4)):
                                     if (min13<= pL2[j]-pL1[i] <= max13 and min34 <=pL3[k]- pL2[j] <= max34 and min45 <=pL4[l]- pL3[k] <= max45) :
                        
                                        #if 80 <=pL2[j]-pL1[i]  <= 120 and 40 <=pL3[k]- pL2[j] <= 80 and 20 <=pL4[l]- pL3[k] <= 80
                                        a = L1[i]
                                        a_pos = pL1[i]
                                        b = L2[j]
                                        b_pos = pL2[j]
                                        c = L3[k]
                                        c_pos = pL3[k]
                                        d = L4[l]
                                        d_pos = pL4[l]
                                        
                                        print (protein_id, a, a_pos, b, b_pos,c, c_pos,d, d_pos)
                                        candidates.append((protein_id, a, a_pos, b, b_pos,c, c_pos,d, d_pos))
                                        

        return candidates

sheet_path= "H:/GProtein_Project/Negative_Control/Neg/sheet_neg.csv"
data = pd.read_csv(sheet_path)

family = input("Enter Protein Family: ")
print (family)

abc=[]
l1= []

for x in range(27):
    protein_family = data.loc[x , "Protein"]
    print (protein_family)
    if (family==protein_family):
        print (protein_family)
        inpath= data.loc[x , "in_path"]
        outpath= data.loc[x , "Negative_Control"]
        
        mismatch1= data.loc[x , "Mismatch_G1"]
        mismatch2= data.loc[x , "Mismatch_G3"]
        mismatch3= data.loc[x , "Mismatch_G4"]
        mismatch4= data.loc[x , "Mismatch_G5"]
        print (mismatch1, mismatch2, mismatch3, mismatch4)
        
        x1= data.loc[x , "G1_box"]
        x2= data.loc[x , "G3_box"]
        x3= data.loc[x , "G4_box"]
        x4= data.loc[x , "G5_box_new"]
        print(x1, x2, x3, x4)
        
        Min_G1_G3= data.loc[x , "Min_G1_G3"]
        Max_G1_G3= data.loc[x , "Max_G1_G3"]
        Min_G3_G4= data.loc[x , "Min_G3_G4"]
        Max_G3_G4= data.loc[x , "Max_G3_G4"]
        Min_G4_G5= data.loc[x , "Min_G4_G5"]
        Max_G4_G5= data.loc[x , "Max_G4_G5"]
        
        df1 = pd.read_excel(inpath)
        df2 = df1.set_index("Protein names", drop = False)
        protein = df2.loc[: , "Sequence"]
        protein_id = df2.loc[: , "Protein names"]
        protein_id
        
        
        for i in range(len(protein)):
            l= H(protein_id[i], protein[i],x1,x2,x3,x4, mismatch1, mismatch2, mismatch3, mismatch4, Min_G1_G3, Min_G3_G4, Min_G4_G5, Max_G1_G3, Max_G3_G4, Max_G4_G5 )            
            l1.append(l)
            abc = [item for sublist in l1 for item in sublist]
            #f = open(out_csv[clas],'a')

gdomains = pd.DataFrame(abc, columns=['ProteinID', 'G1-box', 'Position', 'G3-box', 'Position', 'G4-box', 'Position', 'G5-box', 'Position'])
gdomains= gdomains[gdomains['ProteinID'].astype(bool)] 
            
gdomains.to_csv(outpath, sep=',', encoding='utf-8', index = False)
   