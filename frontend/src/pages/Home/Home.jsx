import React from 'react'
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card"

// Helper function to parse currency strings (e.g., "₹ 1,50,000") into numbers
const parseCurrency = (value) => {
  if (typeof value !== 'string') return 0;
  // Removes currency symbols, commas, and whitespace, then converts to a number
  return Number(value.replace(/[^0-9.-]+/g, "")) || 0;
};

const StatCard = ({ title, stockValue, realEstateValue }) => {
  const stockNum = parseCurrency(stockValue);
  const realEstateNum = parseCurrency(realEstateValue);
  const total = stockNum + realEstateNum;

  return (
    <Card>
      <CardHeader>
        <CardTitle className="text-xl font-semibold text-center">{title}</CardTitle>
      </CardHeader>
      <CardContent className="space-y-2 text-lg">
        {/* Total section */}
        <div className="flex justify-between items-center font-bold">
          <span>Total</span>
          <span>{total.toLocaleString('en-IN')}</span>
        </div>

        {/* Divider */}
        <hr className="my-1 border border-t-2" />

        {/* Individual Sections */}
        <div className="flex justify-between items-center text-muted-foreground">
          <span>Stocks</span>
          <span>{stockNum.toLocaleString('en-IN')}</span>
        </div>
        <div className="flex justify-between items-center text-muted-foreground">
          <span>Real Estate</span>
          <span>{realEstateNum.toLocaleString('en-IN')}</span>
        </div>
      </CardContent>
    </Card>
  );
};

const Home = () => {
  const portfolioData = {
    invested: { stocks: "₹ 1,50,000", realEstate: "₹ 5,25,000" },
    current: { stocks: "₹ 1,75,000", realEstate: "₹ 5,80,000" },
    pnl: { stocks: "₹ 25,000", realEstate: "₹ 55,000" },
  };

  return (
    <div className="container mx-auto px-4 py-8 md:px-6 lg:py-12">
      <div className="mb-8">
        <h1 className="text-3xl font-bold tracking-tight md:text-4xl">Welcome, User</h1>
        <p className="text-muted-foreground mt-2">Here's a snapshot of your investment portfolio.</p>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <StatCard 
          title="Total Invested" 
          stockValue={portfolioData.invested.stocks}
          realEstateValue={portfolioData.invested.realEstate}
        />
        <StatCard 
          title="Current Value" 
          stockValue={portfolioData.current.stocks}
          realEstateValue={portfolioData.current.realEstate}
        />
        <StatCard 
          title="P & L" 
          stockValue={portfolioData.pnl.stocks}
          realEstateValue={portfolioData.pnl.realEstate}
        />
      </div>
    </div>
  )
}

export default Home

