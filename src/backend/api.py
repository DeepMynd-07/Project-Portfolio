from flask import Flask, jsonify, request
from flask_cors import CORS
import psycopg2
import yfinance as yf
from datetime import datetime

app = Flask(__name__)
CORS(app)  # Allow React to call this API

# Database connection
def get_db_connection():
    return psycopg2.connect(
        dbname="stock_portfolio",
        user="admin",
        password="sp123",
        host="localhost",
        port="5432"
    )

# Search stocks by name or ticker
@app.route('/api/stocks/search', methods=['GET'])
def search_stocks():
    query = request.args.get('q', '')
    
    conn = get_db_connection()
    cur = conn.cursor()
    
    # Search by stock name or ticker
    cur.execute("""
        SELECT id, stock_name, ticker_symbol 
        FROM stocks 
        WHERE stock_name ILIKE %s OR ticker_symbol ILIKE %s
        LIMIT 10
    """, (f'%{query}%', f'%{query}%'))
    
    results = cur.fetchall()
    cur.close()
    conn.close()
    
    stocks = [
        {
            'id': row[0],
            'name': row[1],
            'ticker': row[2]
        } for row in results
    ]
    
    return jsonify(stocks)

# Get live price for a stock
@app.route('/api/stocks/price/<ticker>', methods=['GET'])
def get_stock_price(ticker):
    try:
        stock = yf.Ticker(ticker + ".NS")  # NSE stocks
        data = stock.history(period="1d")
        
        if data.empty:
            return jsonify({'error': 'No data found'}), 404
        
        current_price = data['Close'].iloc[-1]
        open_price = data['Open'].iloc[-1]
        high_price = data['High'].iloc[-1]
        low_price = data['Low'].iloc[-1]
        volume = data['Volume'].iloc[-1]
        
        return jsonify({
            'ticker': ticker,
            'current_price': round(current_price, 2),
            'open': round(open_price, 2),
            'high': round(high_price, 2),
            'low': round(low_price, 2),
            'volume': int(volume),
            'timestamp': datetime.now().isoformat()
        })
    except Exception as e:
        return jsonify({'error': str(e)}), 500

# Get multiple stock prices at once
@app.route('/api/stocks/prices', methods=['POST'])
def get_multiple_prices():
    tickers = request.json.get('tickers', [])
    
    results = []
    for ticker in tickers:
        try:
            stock = yf.Ticker(ticker + ".NS")
            data = stock.history(period="1d")
            
            if not data.empty:
                results.append({
                    'ticker': ticker,
                    'price': round(data['Close'].iloc[-1], 2),
                    'change': round(data['Close'].iloc[-1] - data['Open'].iloc[-1], 2)
                })
        except:
            continue
    
    return jsonify(results)

if __name__ == '__main__':
    app.run(debug=True, port=5000)
