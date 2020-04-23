import pandas as pd
import numpy as np

def fillMVPHouseHoldList(householdInfo):
    '''Fill list with household with different acorn groups
        block_90
        block_0
        block_43
        block_110
    '''
    householdSampleList = []
    sampleBlocks = ['block_90','block_0','block_43','block_110']
    for b in sampleBlocks:
        df_sampleOneBlock = householdInfo[householdInfo['file'] == b]
        for i,row in df_sampleOneBlock.iterrows():
            print(row['LCLid'])
            householdSampleList.append(row['LCLid'])
    return householdSampleList

def fillListPerIncome(householdInfo, incomegroup):
    incomeList = []
    df_incomeGroup = householdInfo[householdInfo['Acorn_grouped'] == incomegroup]
    for i ,row in df_incomeGroup.iterrows():
        incomeList.append(row['LCLid'])   
    return incomeList

def fillHouseHoldPerIncome(householdInfo):
    '''
    'Affluent', 'Comfortable', 'Adversity'
    '''
    householdAffluent = fillListPerIncome(householdInfo,'Affluent')
    householdComfortable = fillListPerIncome(householdInfo,'Comfortable')
    householdAdversity = fillListPerIncome(householdInfo,'Adversity')
     
    return householdAffluent,householdComfortable,householdAdversity