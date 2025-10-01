import React from 'react'
import './Stocks.css'

const stockData = [
  { id: 1, name: 'Apple', price: '$170', change: '+1.2%', marketCap: '$2T' },
  { id: 2, name: 'Microsoft', price: '$310', change: '+0.8%', marketCap: '$2.5T' },
  { id: 3, name: 'Tesla', price: '$800', change: '-0.5%', marketCap: '$800B' },
]

const Stocks = () => {
  return (
    <div className='stocks'>
      <h2>Stocks Overview</h2>
      <div className="cards-container">
        {stockData.map((stock) => (
          <div className="stock-card" key={stock.id}>
            <h3>{stock.name}</h3>
            <p><strong>Price:</strong> {stock.price}</p>
            <p><strong>Change:</strong> {stock.change}</p>
            <p><strong>Market Cap:</strong> {stock.marketCap}</p>
          </div>
        ))}
      </div>
    </div>
  )
}

export default Stocks
