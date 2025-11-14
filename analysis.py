
import pandas as pd

df = pd.read_csv('session_data.csv')

summary = df.groupby('country')['session_length'].mean()
print("Avg Session per Country:\n", summary)

dau = df.groupby('session_date')['user_id'].nunique()
print("\nDAU by Day:\n", dau)

summary.to_csv('avg_session_country.csv')
dau.to_csv('dau.csv')

print("\nInsights exported.")
