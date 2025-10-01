import React from 'react'
import './Navbar.css'
import arrow from '../../assets/arrow.png'
import { Link } from 'react-router-dom'

const Navbar = () => {
  
  return (
    <div className='navbar'>
      <ul>
        <li><img src="../public/logo.svg" alt="logo" /></li>
        {/* <li><u>LOGO</u></li> */}
        <li><Link to="/">Home</Link></li>
        <li><Link to="/stocks">Stocks</Link></li>
        <li><Link to="/real-estate">Real Estate</Link></li>
      </ul>
      <div className="navbar-right">
        <form>
            <input 
              type='text' 
              placeholder='Search Stock Tracker' />
            <button type='submit'>Search</button>
        </form>
        <button>Sign Up <img src={arrow} alt="" /></button>
      </div>
    </div>  
  )
}

export default Navbar
