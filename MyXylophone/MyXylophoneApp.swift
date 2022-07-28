//
//  MyXylophoneApp.swift
//  MyXylophone
//
//  Created by Steven Williams on 7/26/22.
//

import SwiftUI

@main
struct MyXylophoneApp: App {
    @State var showLaunchView: Bool = true
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                ContentView()
                if showLaunchView == true {
                    LaunchView(showLaunchView: $showLaunchView)
                        .transition(.move(edge: .leading))
                }
            }
            .zIndex(2.0)
        }
    }
}
