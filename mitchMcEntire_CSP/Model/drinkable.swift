//
//  drinkable.swift
//  mitchMcEntire_CSP
//
//  Created by Mcentire, Mitchell on 11/20/17.
//  Copyright © 2017 Mcentire, Mitchell. All rights reserved.
//

import Foundation
public protocol drinkable
{
    var drinkState : Bool{set get}
    func drink()-> Void
    func isDrunk() -> Bool
}
