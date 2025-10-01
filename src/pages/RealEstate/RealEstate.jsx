import React from 'react'
import './RealEstate.css'

const estateData = [
  { id: 1, name: 'Ocean View Apartment', price: '$500,000', location: 'California', status: 'For Sale' },
  { id: 2, name: 'Downtown Condo', price: '$350,000', location: 'New York', status: 'Sold' },
  { id: 3, name: 'Suburban House', price: '$450,000', location: 'Texas', status: 'For Sale' },
]

const RealEstate = () => {
  return (
    <div className='realestate'>
      <h2>Real Estate Listings</h2>
      <div className="cards-container">
        {estateData.map((estate) => (
          <div className="estate-card" key={estate.id}>
            <h3>{estate.name}</h3>
            <p><strong>Price:</strong> {estate.price}</p>
            <p><strong>Location:</strong> {estate.location}</p>
            <p><strong>Status:</strong> {estate.status}</p>
          </div>
        ))}
      </div>
    </div>
  )
}

export default RealEstate
