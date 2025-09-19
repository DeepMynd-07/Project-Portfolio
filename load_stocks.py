import pandas as pd
from sqlalchemy import create_engine, text

# 1. Load CSV
csv_file = "EQUITY_L.csv"
df = pd.read_csv(csv_file)

# Keep only symbol + company
df_subset = df[["SYMBOL", "NAME OF COMPANY"]]
df_subset.columns = ["ticker_symbol", "stock_name"]

# 2. Connect to PostgreSQL
engine = create_engine("postgresql://admin:sp123@localhost:5432/stock_portfolio")

# 3. Insert row by row, skipping duplicates
with engine.begin() as conn:  # begin() ensures transaction
    for _, row in df_subset.iterrows():
        conn.execute(
            text("""
                INSERT INTO stocks (ticker_symbol, stock_name)
                VALUES (:ticker_symbol, :stock_name)
                ON CONFLICT (ticker_symbol) DO NOTHING;
            """),
            {"ticker_symbol": row["ticker_symbol"], "stock_name": row["stock_name"]}
        )

print("✅ Symbols + company names inserted into stocks table (duplicates skipped).")
