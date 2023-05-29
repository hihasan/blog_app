//
//  ContentView.swift
//  Appnap Blog
//
//  Created by Appnap ws27 on 29/5/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var isActive : Bool = false
    
    var body: some View {
        ZStack{
            if self.isActive{
                OnboardingView()
            } else{
                SplashView()
                
            }
        }.onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5){
                withAnimation {
                    isActive = true
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SplashView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor").edgesIgnoringSafeArea(.all)
            
            Image("appnap_logo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 75)
        }
    }
}
