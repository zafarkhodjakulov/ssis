import pandas as pd
import openpyxl
from sqlalchemy import create_engine


df = pd.read_csv('./lesson-2/customer_data.csv')
# excel faylini yaratish
wb = df.to_excel('./lesson-2/customer_data.xlsx', index=False)

# sql serverga ulanish
server = 'ASUS-EXPERTBOOK\SQLEXPRESS'
database = 'ssis'
engine = create_engine(f'mssql+pyodbc://{server}/{database}?driver=ODBC+Driver+17+for+SQL+Server&Trusted_Connection=yes')


try:
    df.to_sql('customerdata', con=engine, if_exists='append', index=False)
    print("Ma'lumotlar muvaffaqiyatli yuklandi!")
except Exception as e:
    print("Xatolik:", e)