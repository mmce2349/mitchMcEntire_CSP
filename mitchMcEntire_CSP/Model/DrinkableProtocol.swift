//
//  DrinkableProtocol.swift
//  mitchMcEntire_CSP
//
//  Created by Mcentire, Mitchell on 11/20/17.
//  Copyright © 2017 Mcentire, Mitchell. All rights reserved.
//

import Foundation

public protocol Drinkable
{
    func canDrink() -> Bool
    func doDrink() -> Void
}
public class Soda : Drinkable
{
    public var drinkState: Bool
    public init()
    {
        self.drinkState = false
    }
    
    public func state() -> Void
    {
        print("I am drinkable")
        drinkState = true
    }
    
    public func isDrunk() -> Bool
    {
        if(drinkState)
        {
            print("Drink me!!!")
        }
        else
        {
                print ("Don't drink me!!!")
        }
        return drinkState
    }
    
    public func canDrink()->Bool
    { return false
    }
    public func doDrink()->Void
    {
      
    }
}



