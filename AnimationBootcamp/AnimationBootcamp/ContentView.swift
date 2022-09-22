//
//  ContentView.swift
//  AnimationBootcamp
//
//  Created by Bishowjit Ray on 14/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            Button("Button"){
               
                    isAnimated.toggle()
            
            
            }
            Spacer()
            Rectangle()
                .fill(isAnimated ? Color.green: Color.purple)
                .frame(width: isAnimated ? 100:300,
                       height: isAnimated ? 100:300)
                .cornerRadius(isAnimated ? 50:30)
                .rotationEffect(Angle(degrees: isAnimated ? 360:0))
                .offset(y: isAnimated ? 300:20)
                .animation(Animation
                    .default
                    .repeatForever(autoreverses: true)
                )
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
