//
//  OnboardingView.swift
//  Appnap Blog
//
//  Created by Appnap ws27 on 29/5/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor").edgesIgnoringSafeArea(.all).opacity(0.5)
            
            VStack{
                LottieView(lottieFile: "onboard_anim")
                Spacer()
                VStack{
                    
                    BottomRectangleView().offset( y: 0)
                    
                    
                }.edgesIgnoringSafeArea(.bottom)
                
            }.edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

struct BottomRectangleView: View {
    
    public let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var selection = 0
    let text = [
        "You can read thousands of articles on Blog Club, save them in the application and share them with your loved ones.",
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Read Your Article you\nwant instantly")
                .font(.title2)
                .bold()
                .lineLimit(2)
            
            TabView(selection: $selection){
                ForEach(0..<2){i in
                    Text("\(text[i])")
                        .font(.body)
                        .fontWeight(.thin)
                }
            }
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .interactive))
                .onReceive(timer, perform: {_ in
                    withAnimation{
                        selection = selection < 3 ? selection  + 1 : 0
                    }
                })
                
            
            
            HStack {
                SliderCounterView()
                Spacer()
                Button(action: {}) {
                    Image(systemName: "arrow.forward")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 21)
                        .padding([.horizontal], 18.0)
                        .padding([.vertical], 15)
                        .foregroundColor(.white)
                        .background(Color("BlueCOlor"))
                    .cornerRadius(10.0)
                }
            }
            .padding(.bottom, 25.0)
            
            
        }.padding()
            .padding(.top,15)
            .background(.white)
            .cornerRadius(30.0)
        
    }
}

struct SliderCounterView: View {
    var body: some View {
        Circle().fill(.blue)
            .frame(width: 5, height: 5).cornerRadius(3.0)
        Circle().background(Color(.blue))
            .frame(width: 5, height: 5).cornerRadius(3.0)
        Circle().background(Color(.blue))
            .frame(width: 5, height: 5).cornerRadius(3.0)
    }
}
