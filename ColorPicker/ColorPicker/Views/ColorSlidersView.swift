//
//  ColorSlidersView.swift
//  ColorPicker
//
//  Created by Roman Litvinovich on 15/12/2023.
//

import SwiftUI

struct ColorSlidersView: View {
    
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double

    var body: some View {
        VStack {
            VStack {
                Text("Red")

                HStack {
                    Slider(value: $redValue, in: 0...255)
                        .tint(.red)
                    
                    TextField("0.0", value: $redValue, formatter: NumberFormatter())
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                        .frame(width: 45)
                }
            }

            VStack {
                Text("Green")

                HStack {
                    Slider(value: $greenValue, in: 0...255)
                        .tint(.green)
                    TextField("0.0", value: $greenValue, formatter: NumberFormatter())
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                        .frame(width: 45)               
                }
            }

            VStack {
                Text("Blue")
                
                HStack {
                    Slider(value: $blueValue, in: 0...255)
                        .tint(.blue)
                    TextField("0.0", value: $blueValue, formatter: NumberFormatter())
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .keyboardType(.decimalPad)
                        .frame(width: 45)
                }
            }
            
        }
        
        .frame(maxWidth: .infinity)
        .padding(.bottom, 24)
    }
}

#Preview {
    ColorSlidersView(redValue: Binding.constant(127.5), greenValue: Binding.constant(127.5), blueValue: Binding.constant(127.5))
        .padding()
}
