from sqlalchemy import create_engine

def load(df):
    engine = create_engine("sqlite:///ecommerce.db")
    df.to_sql("events", engine, if_exists='append', index=False)
    print("Data loaded")
