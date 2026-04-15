import pandas as pd

def extract():
    df = pd.read_csv("2019-Oct.csv")
    print("Data extracted")
    return df
