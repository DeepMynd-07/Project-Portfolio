import React from 'react'
import './Home.css'

const Home = () => {
  return (
    <div className='home'>
  <div className="hero">
    <h1>Welcome User</h1>
  </div>

  <div className="tables-container">
    <div className="stocks-table">
      <div className="table-layout">
        <p>#</p>
        <p>Stock Name</p>
        <p>Price</p>
        <p>Market Cap</p>
        <p>Change</p>
      </div>
    </div>

    <div className="realestate-table">
      <div className="table-layout">
        <p>#</p>
        <p>Property</p>
        <p>Price</p>
        <p>Location</p>
        <p>Status</p>
      </div>
    </div>
  </div>
</div>

  )
}

export default Home
