//
//  Temperature.swift
//  Converter
//
//  Created by Brittany Johnson on 5/3/24.
//

// Temperature conversion: users choose Celsius, Fahrenheit, or Kelvin.

import SwiftUI

struct Temperature: View {
    private let units = ["Celsius", "Fahrenheit", "Kelvin"]
    
    @State private var fromUnit = "Celsius"
    @State private var toUnit = "Fahrenheit"
    @State private var result = "0.0"
    
    private var computeResult: String {
        get {
            return result
        }
        set {
            result = String(0)
        }
    }
    
    var body: some View {
        NavigationStack {
            Picker("From Unit", selection: $fromUnit) {
                ForEach(units, id: \.self) { unit in
                      Text(unit)
                  }
            }
            .pickerStyle(.segmented)
            
            Picker("To Unit", selection: $toUnit) {
                ForEach(units, id: \.self) { unit in
                      Text(unit)
                  }
            }
            .pickerStyle(.segmented)
            
            TextField("Result", text: $result)
        }.navigationTitle("Temperture")
    }
}

#Preview {
    Temperature()
}
