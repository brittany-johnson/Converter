//
//  ContentView.swift
//  Converter
//
//  Created by Brittany Johnson on 5/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Grid {
                GridRow {
                    ConvertButton(buttonLabel: "Temperture", iconName: "thermometer.medium", destination: Temperature())
                    ConvertButton(buttonLabel: "Length", iconName: "ruler", destination: Length())
                }
                GridRow {
                    ConvertButton(buttonLabel: "Time", iconName: "clock", destination: Time())
                }
            }.padding(.all)
            Spacer()

        }
    }
}

#Preview {
    ContentView()
}
