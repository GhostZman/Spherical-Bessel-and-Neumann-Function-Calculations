//
//  ContentView.swift
//  Spherical Bessel and Neumann Function Calculations
//
//  Created by Phys440Zachary on 1/19/24.
//

import SwiftUI

struct ContentView: View {
    // State variables to hold the input value and J_l values
    @State private var inputValue: String = "1"
    @State private var jValuesUp: [Double] = []
    @State private var jValuesDown: [Double] = []
    
    var besselCalc = SphericalBessel()
    
    var body: some View {
        VStack {
            TextField("Enter value of x", text: $inputValue)
                .padding()
            
            Button("Calculate") {
                
                // Calculate J_l values
                jValuesUp = besselCalc.calculateFirst25Up(x: Double(inputValue) ?? 1)
                jValuesDown = besselCalc.calculateFirst25Down(x: Double(inputValue) ?? 1)
            }
            .padding()
            
            // Display the table of values
            List(0..<26, id: \.self) { index in
                HStack {
                    Text("l: \(index)")
                    Text("J_l up: \(jValuesUp.indices.contains(index) ? "\(jValuesUp[index])" : "-")")
                    Text("J_l down: \(jValuesDown.indices.contains(index) ? "\(jValuesDown[index])" : "-")")
                }
            }
        }
        .padding()
    }
}
