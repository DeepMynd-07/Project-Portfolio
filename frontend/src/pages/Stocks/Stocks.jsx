import React from 'react'
import { Card, CardContent } from "@/components/ui/card"
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs"
import { Input } from "@/components/ui/input"
import { Button } from "@/components/ui/button"
import { Search, Pencil, Trash2 } from "lucide-react" // Icons for the new buttons

// A small helper component for displaying individual stats
const StatItem = ({ label, value }) => (
  <div className="flex flex-col">
    <span className="text-xs text-muted-foreground uppercase">{label}</span>
    <span className="font-semibold">{value}</span>
  </div>
);

// HoldingCard component now with Edit and Remove buttons
const HoldingCard = ({ holding }) => (
  <Card>
    <CardContent className="p-4 flex items-center justify-between">
      {/* Main content area */}
      <div className="grid grid-cols-4 gap-4 items-start flex-grow">
        <div className="col-span-1 flex flex-col">
          <span className="font-bold text-lg">{holding.name}</span>
          <span className="text-lg text-muted-foreground">{holding.price}</span>
        </div>
        <div className="col-span-3 grid grid-cols-3 gap-4 text-left">
          <StatItem label="Invested" value={holding.invested} />
          <StatItem label="Current" value={holding.current} />
          <StatItem label="P & L" value={holding.pnl} />
          <StatItem label="Avg. Price" value={holding.avgPrice} />
          <StatItem label="Quantity" value={holding.quantity} />
        </div>
      </div>

      {/* Buttons area */}
      <div className="flex items-center space-x-2 ml-4">
        <Button variant="ghost" size="icon">
          <Pencil className="h-4 w-4" />
        </Button>
        <Button variant="ghost" size="icon" className="text-red-500 hover:text-red-600">
          <Trash2 className="h-4 w-4" />
        </Button>
      </div>
    </CardContent>
  </Card>
);

// Watchlist card now with a Remove button
const WatchlistCard = ({ stock }) => (
  <Card>
    <CardContent className="p-4 flex justify-between items-center">
      <div className="flex-grow">
        <span className="font-semibold text-lg">{stock.name}</span>
      </div>
      <div className="flex items-center space-x-4">
        <span className="text-lg text-muted-foreground">{stock.price}</span>
        <Button variant="ghost" size="icon" className="text-red-500 hover:text-red-600">
          <Trash2 className="h-4 w-4" />
        </Button>
      </div>
    </CardContent>
  </Card>
);


const Stocks = () => {
  // Dummy data for demonstration
  const holdingsData = [
    { name: "Tata Motors", price: "₹ 985.50", invested: "₹ 8,50,000", current: "₹ 9,10,000", pnl: "₹ 60,000", avgPrice: "₹ 920.00", quantity: 924 },
    { name: "Reliance", price: "₹ 2,950.00", invested: "₹ 2,50,000", current: "₹ 2,95,000", pnl: "₹ 45,000", avgPrice: "₹ 2,500.00", quantity: 100 },
  ];

  const watchlistData = [
    { name: "Tata Steel", price: "₹ 175.20" },
    { name: "TCS", price: "₹ 3,850.75" },
    { name: "Infosys", price: "₹ 1,515.00" },
  ];

  return (
    <div className="container mx-auto px-4 py-8 md:px-6">
      <Tabs defaultValue="holdings" className="w-full">
        <div className="flex flex-wrap gap-4 justify-between items-center mb-6">
          <TabsList className="w-full sm:w-auto">
            <TabsTrigger value="holdings">Holdings</TabsTrigger>
            <TabsTrigger value="watchlist">Watchlist</TabsTrigger>
          </TabsList>
          <div className="flex w-full sm:w-auto sm:max-w-xs items-center space-x-2">
            <Input type="text" placeholder="Search..." />
            <Button type="submit" size="icon" variant="outline">
              <Search className="h-4 w-4" />
            </Button>
          </div>
        </div>

        <TabsContent value="holdings" className="mt-6">
          <div className="space-y-4">
            {holdingsData.map((holding) => (
              <HoldingCard key={holding.name} holding={holding} />
            ))}
          </div>
        </TabsContent>

        <TabsContent value="watchlist" className="mt-6">
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            {watchlistData.map((stock) => (
              <WatchlistCard key={stock.name} stock={stock} />
            ))}
          </div>
        </TabsContent>
      </Tabs>
    </div>
  )
}

export default Stocks

