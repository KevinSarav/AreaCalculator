//
//  Triangle.swift
//  AreaCalculator
//
//  Created by Saravia, Kevin on 7/1/20.
//  Copyright © 2020 Saravia, Kevin. All rights reserved.
//

import Foundation

class Triangle
{
    var base: Double
    var height: Double
    
    init(_ b: Double, _ h: Double)
    {
        base = b
        height = h
    }
    
    func calculateArea() -> Double {
        return (base * height) / 2
    }
}
