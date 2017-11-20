//
//  DrinkableProtocol.swift
//  mitchMcEntire_CSP
//
//  Created by Mcentire, Mitchell on 11/20/17.
//  Copyright © 2017 Mcentire, Mitchell. All rights reserved.
//

import Foundation

public protocol DrinkableProtocol
{
    func canDrink() -> Bool
    func doDrink() -> Void
}
public class DrinkableProtocol : drinkable
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
    }
}



