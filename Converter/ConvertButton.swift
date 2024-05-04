//
//  ConvertButton.swift
//  Converter
//
//  Created by Brittany Johnson on 5/3/24.
//

import SwiftUI

struct ConvertButton: View {
    var buttonLabel: String
    var iconName: String
    var destination: any View
    
    
    @ViewBuilder func getView(view: any View) -> some View {
        switch view {
        case is Time:
            Time()
        case is Temperature:
            Temperature()
        case is Length:
            Length()
        default:
            EmptyView()
        }
    }
    
    var body: some View {
        NavigationLink(destination: getView(view: destination)) {
            Label {
                Text(buttonLabel)
                    .font(.title3)
                
            } icon: {
                Image(systemName: iconName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50.0, height: 50.0)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .padding(8)
            .background(Color.blue)
            .background(in: RoundedRectangle(cornerRadius: 8, style: .continuous))
            .compositingGroup()
            .shadow(radius: 1)
        }
    }
}

#Preview {
    ConvertButton(buttonLabel: "Temperture", iconName: "thermometer.medium", destination: Temperature())
}
