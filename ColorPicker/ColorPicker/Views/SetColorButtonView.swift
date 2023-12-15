//
//  SetColorButtonView.swift
//  ColorPicker
//
//  Created by Roman Litvinovich on 15/12/2023.
//

import SwiftUI

struct SetColorButtonView: View {
    
    @Binding var activeColor: Color
    
    var action: () -> Void
    var color: [ Color ] = [.red,
                            .green,
                            .blue]

    var body: some View {
        
        Button("Save color".uppercased()) { action() }
        
        .frame(width: 120, height: 37)
        .background(LinearGradient(colors: color,
                                   startPoint: .leading,
                                   endPoint: .trailing))
        .foregroundColor(.white)
        .clipShape(.buttonBorder)
        
        
    }
}

#Preview {
    SetColorButtonView(activeColor: Binding
        .constant(Color.gray),
                       action: { print("Selected color is saved") })
}
