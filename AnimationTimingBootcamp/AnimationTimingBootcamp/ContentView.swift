//
//  ContentView.swift
//  AnimationTimingBootcamp
//
//  Created by Bishowjit Ray on 14/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    var body: some View {
        VStack{
            Button("Button"){
                isAnimating.toggle()
            }
            Spacer()
            RoundedRectangle(cornerRadius: 23.0)
                .fill(Color.green)
                .frame(width: isAnimating ? 345:50, height:isAnimating ? 111:30)
                .animation(Animation.spring(
                    response: 0.5, dampingFraction: 5.7, blendDuration: 1.0
                ))
//
//            RoundedRectangle(cornerRadius: 23.0)
//                .fill(Color.green)
//                .frame(width: isAnimating ? 345:50, height:isAnimating ? 111:30)
//                .animation(Animation.easeIn(duration: timing))
//            RoundedRectangle(cornerRadius: 23.0)
//                .fill(Color.green)
//                .frame(width: isAnimating ? 345:50, height:isAnimating ? 111:30)
//                .animation(Animation.easeInOut(duration: timing))
//            RoundedRectangle(cornerRadius: 23.0)
//                .fill(Color.green)
//                .frame(width: isAnimating ? 345:50, height:isAnimating ? 111:30)
//                .animation(Animation.easeOut(duration: timing))
            Spacer()

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
