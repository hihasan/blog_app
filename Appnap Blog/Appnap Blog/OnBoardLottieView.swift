//
//  OnBoardLottieView.swift
//  Appnap Blog
//
//  Created by Appnap ws27 on 29/5/23.
//

import Lottie
import SwiftUI
import UIKit

struct LottieView : UIViewRepresentable{
    let lottieFile: String 
        var loopMode: LottieLoopMode = .loop
        var animationView = LottieAnimationView()
        
        func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
            let view = UIView()
            
            animationView.animation = LottieAnimation.named(lottieFile)
            animationView.contentMode = .scaleAspectFill
            animationView.loopMode = .loop
            
            animationView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(animationView)
            
            NSLayoutConstraint.activate([
                animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
                animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
            ])
            
            return view
        }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        //do nothing file name: onboard_anim
    }
    
}
