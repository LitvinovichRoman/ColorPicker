//
//  AnimationScreen.swift
//  ColorPicker
//
//  Created by Roman Litvinovich on 15/12/2023.
//

import SwiftUI
import Lottie

struct AnimationScreen: UIViewRepresentable {
    
    private let view = UIView(frame: .zero)
    private let animationView = LottieAnimationView()
    
    private let animation = LottieAnimation.named("gear-loader")
    private var loopMode: LottieLoopMode = .loop
    
    
    func makeUIView(context: Context) -> UIView {
        setupLottie()
        return view
    }
    
    
    func updateUIView(_ uiView: UIViewType, context: Context) { }
    
    private func makeConstraint() {
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor) ])
    }
    
    func setupLottie(){
        view.addSubview(animationView)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = loopMode
        animationView.play()
        
        makeConstraint()
    }
    
    
}

#Preview {
    AnimationScreen()
}
