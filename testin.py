import psycopg2
import yfinance as yf
import threading
import time
from datetime import datetime

class StockPriceMonitor:
    def __init__(self, ticker_symbol):
        # Database connection
        self.conn = psycopg2.connect(
            dbname="stock_portfolio",
            user="admin", 
            password="sp123",
            host="localhost",
            port="5432"
        )
        cur = self.conn.cursor()
        
        # Get stock info from database
        cur.execute("SELECT stock_name, ticker_symbol FROM stocks WHERE ticker_symbol = %s;", (ticker_symbol,))
        result = cur.fetchone()
        
        if result is None:
            raise ValueError(f"Ticker {ticker_symbol} not found!")
            
        self.stock_name, self.ticker = result
        self.running = False
        cur.close()
    
    def get_price(self):
        try:
            stock = yf.Ticker(self.ticker + ".NS")
            price = stock.history(period="1d")["Close"].iloc[-1]
            return price
        except Exception as e:
            print(f"Error fetching price: {e}")
            return None
    
    def start_monitoring(self):
        self.running = True
        print(f"🟢 Started monitoring {self.stock_name} ({self.ticker})")
        print("Press Ctrl+C to stop...\n")
        
        try:
            while self.running:
                price = self.get_price()
                if price:
                    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")
                    print(f"📊 [{timestamp}] {self.stock_name}: ₹{price:.2f}")
                
                time.sleep(60)  # 1 minute interval
                
        except KeyboardInterrupt:
            self.stop_monitoring()
    
    def stop_monitoring(self):
        self.running = False
        self.conn.close()
        print("\n🔴 Price monitoring stopped.")

# Usage
if __name__ == "__main__":
    monitor = StockPriceMonitor("TCS")
    monitor.start_monitoring()
