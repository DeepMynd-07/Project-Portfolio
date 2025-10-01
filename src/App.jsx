import React from 'react'
import Navbar from './components/Navbar/Navbar'
import {Routes, Route} from 'react-router-dom'
import Home from './pages/Home/Home'
import Stocks from './pages/Stocks/Stocks'
import RealEstate from './pages/RealEstate/RealEstate'

const App = () => {
  return (
    <div className='app'>
      <Navbar />
      <Routes>
        <Route path='/' element={<Home/>} />
        <Route path='/stocks' element={<Stocks/>} />
        <Route path='/real-estate' element={<RealEstate/>} />
      </Routes>
    </div>
  )
}

export default App
