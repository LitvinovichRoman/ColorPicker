//
//  ResultColorView.swift
//  ColorPicker
//
//  Created by Roman Litvinovich on 13/12/2023.
//

import SwiftUI

struct ResultColorView: View {
    
    @Binding var activeColor: Color
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius:25)
                .frame(width: 300, height: 120)
                .foregroundStyle(activeColor)
                .overlay(RoundedRectangle(cornerRadius:15)
                        .strokeBorder(.thinMaterial, lineWidth: 6))
                .padding(.bottom, 24)

        }
    }
}

#Preview {
    ResultColorView(activeColor: Binding.constant(Color.gray))
        .padding()
}
