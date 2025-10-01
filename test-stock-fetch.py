import psycopg2
import yfinance as yf

# Connect to local PostgreSQL
conn = psycopg2.connect(
    dbname="stock_portfolio",
    user="admin", 
    password="sp123",
    host="localhost",
    port="5432"
)
cur = conn.cursor()

# Search by ticker (more reliable)
ticker_symbol = "TCS"
cur.execute("SELECT stock_name, ticker_symbol FROM stocks WHERE ticker_symbol = %s;", (ticker_symbol,))
result = cur.fetchone()

if result is None:
    print(f"Ticker {ticker_symbol} not found in database!")
else:
    stock_name, ticker = result
    
    # Fetch live price with NSE suffix
def prices():
    stock = yf.Ticker(ticker + ".NS")
    price = stock.history(period="1d")["Close"].iloc[-1]
    return price
    # print(f"Live price of {stock_name} ({ticker}) is: ₹{price:.2f}")
    

    # return price()
print(prices())

cur.close()
conn.close()
