import pandas as pd

def transform(df):
    df = df.drop_duplicates()
    df = df.dropna()
    df['event_time'] = pd.to_datetime(df['event_time'])
    print("Data transformed")
    return df
