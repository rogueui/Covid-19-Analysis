
import pandas as pd
import requests
import io
    
url = "https://raw.githubusercontent.com/datasets/covid-19/main/data/countries-aggregated.csv"
download = requests.get(url).content

df = pd.read_csv(io.StringIO(download.decode('utf-8')))
df.to_csv('data/countries-aggregated.csv')
print('Data Saved Successfully!')

