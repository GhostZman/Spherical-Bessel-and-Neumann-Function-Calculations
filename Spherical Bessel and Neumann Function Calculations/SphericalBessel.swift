//
//  SphericalBessel.swift
//  Spherical Bessel and Neumann Function Calculations
//
//  Created by Phys440Zachary on 2/9/24.
//

import Foundation
import Observation
import SwiftUI

@Observable class SphericalBessel {
    
    func down(x: Double, order: Int, start: Int) -> Double{
        var scale: Double
        var j: [Double] = Array(repeating: 0, count: start + 2 )
        
        j[start+1] = 1.0
        j[start] = 1.0
        
        for k in (1...start).reversed(){
            j[k-1] = ((2.0*Double(k)+1.0)/Double(x))
            j[k-1] = j[k-1]*j[k]-j[k+1]
        }
        
        scale = (sin(x)/x)/j[0]
        return j[order]*scale
    }
    
    func up(x: Double, order: Int) -> Double{
        
        var j: [Double] = Array(repeating: 0, count: order)
        
        j[0] = sin(x)/x
        j[1] = (sin(x)/pow(x,2))-(cos(x)/x)
        
        var k: Int = 1
        
        while k<=order {
            j[k+1] = ((2.0*Double(k)+1.0)/Double(x))
            j[k+1] = j[k+1]*j[k]-j[k-1]
            k+=1
        }
        
        return j[order]
    }
}
