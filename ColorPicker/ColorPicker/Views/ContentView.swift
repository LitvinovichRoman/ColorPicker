//
//  ContentView.swift
//  ColorPicker
//
//  Created by Roman Litvinovich on 13/12/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue = 0.0
    @State private var greenValue = 0.0
    @State private var blueValue = 0.0
    
    @State private var colorForResultView = Color.black
    
    @State private var showingAnimationScreen = true

       var body: some View {
           Group {

               if showingAnimationScreen {
                   AnimationScreen()
               } else {
                   mainContentView
               }
           }
           .onAppear {
               DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                   withAnimation { showingAnimationScreen = false }
               }
           }
       }
    
    var mainContentView: some View {
        VStack {
            Text("Color Picker")
                .font(.title)
                .fontWeight(.semibold)

            ColorView(red: $redValue, 
                      green: $greenValue, 
                      blue: $blueValue)
            
            ResultColorView(activeColor: $colorForResultView)
           

            sliderSection
        }
        .padding()
    }

    private var sliderSection: some View {
        VStack {
            ColorSlidersView(redValue: $redValue, 
                             greenValue: $greenValue,
                             blueValue: $blueValue)
            
            SetColorButtonView(activeColor: $colorForResultView,action: setColor)
        }
    }

    private func setColor() {
        colorForResultView = Color(red: redValue / 255.0, 
                                   green: greenValue / 255.0,
                                   blue: blueValue / 255.0)
    }
}

#Preview {
    ContentView()
}
