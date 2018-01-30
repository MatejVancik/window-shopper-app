//
//  Wage.swift
//  Window shopper
//
//  Created by Matej Vancik on 1/30/18.
//  Copyright © 2018 Matej Vancik. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
