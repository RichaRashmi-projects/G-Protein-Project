# -*- coding: utf-8 -*-
"""
Created on Tue Jun  4 14:37:03 2019

@author: Richa Rashmi
"""
entropy = dict()

import pandas as pd 
import numpy as np
import scipy.stats

def calculate_entropy(PWM1, PWM3, PWM4, PWM5):
    
    entropy1 = 0
    entropy3 = 0
    entropy4 = 0
    entropy5 = 0
    
    for i in range(1,PWM1.shape[1]):
        entropy1 += scipy.stats.entropy(PWM1.iloc[:,[(i)]], qk=None, base=None)
        #print (PWM1.iloc[:,[(i)]])
        print (entropy1)
    
    for i in range(1,PWM3.shape[1]):
        entropy3 += scipy.stats.entropy(PWM3.iloc[:,[(i)]], qk=None, base=None)
        #print (PWM3.iloc[:,[(i)]])
        print (entropy3)
        
    for i in range(1,PWM4.shape[1]):
        entropy4 += scipy.stats.entropy(PWM4.iloc[:,[(i)]], qk=None, base=None)
        #print (PWM4.iloc[:,[(i)]])
        print (entropy4)
    
    for i in range(1,PWM5.shape[1]):
        entropy5 += scipy.stats.entropy(PWM5.iloc[:,[(i)]], qk=None, base=None)
        #print (PWM5.iloc[:,[(i)]])
        print (entropy5)    
  
    return np.concatenate((entropy1, entropy3, entropy4, entropy5))


    
sheet_path= "H:/GProtein_Project/figures/data/Entropy_path.csv"
data = pd.read_csv(sheet_path)
#entropy = dict()

family = input("Enter Protein Family: ")
print (family)

for x in range(data.shape[0]):
    protein_family = data.loc[x , "Protein"]
    print (protein_family)
    if (family==protein_family):
        pwm1= pd.read_csv(data.loc[x , "PWM1"]) 
        pwm3= pd.read_csv(data.loc[x , "PWM3"])
        pwm4= pd.read_csv(data.loc[x , "PWM4"])
        pwm5= pd.read_csv(data.loc[x , "PWM5"])
        
        entropy[family] = calculate_entropy(pwm1, pwm3, pwm4, pwm5)
        print(entropy)
        
        
with open('H:/GProtein_Project/figures/data/Entropy.csv', 'a') as f:
    for key in entropy.keys():
        f.write("%s,%s\n"%(key,entropy[key]))
