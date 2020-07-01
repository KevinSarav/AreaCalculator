//
//  Circle.swift
//  AreaCalculator
//
//  Created by Saravia, Kevin on 7/1/20.
//  Copyright © 2020 Saravia, Kevin. All rights reserved.
//

import Foundation

class Circle
{
    var radius: Double
    
    init(_ r: Double)
    {
        radius = r
    }
    
    func calculateArea() -> Double {
        return Double.pi * pow(radius, 2)
    }
}
