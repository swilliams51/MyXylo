//
//  LaunchView.swift
//  MyXylophone
//
//  Created by Steven Williams on 7/28/22.
//

import SwiftUI

struct LaunchView: View {
    private let phrase: String = "Let's make music together!"
    @State private var banner: String = ""
    @Binding var showLaunchView: Bool
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Image("LaunchImage")
                .resizable()
                .frame(width: 150, height: 150)
            HStack {
                Text(banner).animation(.spring())
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .offset(y: 90)
        }
        .transition(AnyTransition.scale.animation(.easeIn))
        .onAppear {
            banner = ""
            phrase.enumerated().forEach { index, character in
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(index) * 0.075) {
                    banner += String(character)
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                showLaunchView = false
            }
        }
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView(showLaunchView: .constant(true))
    }
}
