import React from 'react'
import { Link } from 'react-router-dom'
import {
  NavigationMenu,
  NavigationMenuItem,
  NavigationMenuLink,
  NavigationMenuList,
  navigationMenuTriggerStyle,
} from "@/components/ui/navigation-menu"
import { Button } from "@/components/ui/button"
import { Building2 } from "lucide-react"
import { ModeToggle } from "../mode-toggle"

export function Navbar() {
  return (
    <header className="px-4 py-10 lg:px-6 h-14 flex items-center justify-between">
      <div className="flex items-center gap-8"> 
        <Link to="/" className="flex items-center justify-center">
          <Building2 className="h-6 w-6" />
          <span className="sr-only">Stocker</span>
          <span className="ml-5 font-bold text-lg">Stocker</span>
        </Link>
        <nav>
          <NavigationMenu>
            <NavigationMenuList>
              <NavigationMenuItem>
                <NavigationMenuLink asChild className={navigationMenuTriggerStyle()}>
                  <Link to="/">Home</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
              <NavigationMenuItem>
                <NavigationMenuLink asChild className={navigationMenuTriggerStyle()}>
                  <Link to="/stocks">Stocks</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
              <NavigationMenuItem>
                <NavigationMenuLink asChild className={navigationMenuTriggerStyle()}>
                  <Link to="/realestate">Real Estate</Link>
                </NavigationMenuLink>
              </NavigationMenuItem>
            </NavigationMenuList>
          </NavigationMenu>
        </nav>
      </div>
      <div className="flex items-center gap-4">
        <ModeToggle />
        <Button className="px-8 cursor-pointer" variant="default">Login</Button>
      </div>
    </header>
  )
}

export default Navbar