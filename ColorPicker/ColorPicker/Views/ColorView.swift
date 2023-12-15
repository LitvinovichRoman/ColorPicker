//
//  ColorView.swift
//  ColorPicker
//
//  Created by Roman Litvinovich on 15/12/2023.
//

import SwiftUI

struct ColorView: View {
    
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius:25)
                .frame(width: 300, height: 120)
        
                .foregroundStyle(Color(red: red / 255.0,
                                       green: green / 255.0,
                                       blue: blue / 255.0))
            
                .overlay(RoundedRectangle(cornerRadius:24)
                        .strokeBorder(.thinMaterial, lineWidth: 6))
            
                .padding(.bottom, 24)
        }
    }
}

#Preview {
    ColorView(red: Binding.constant(128),
              green: Binding.constant(128),
              blue: Binding.constant(128))
    
        .padding()
}
