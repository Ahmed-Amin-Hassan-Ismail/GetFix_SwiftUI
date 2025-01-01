//
//  GetFixApp.swift
//  GetFix
//
//  Created by Ahmed Amin on 01/01/2025.
//

import SwiftUI

@main
struct GetFixApp: App {
    
    // MARK: - Properties
    
    @State private var shouldShowLaunchScreen: Bool = true
    
    // MARK: - Init
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                
                if shouldShowLaunchScreen {
                    LaunchScreen(shouldShowLaunchScreen: $shouldShowLaunchScreen)
                        .transition(.move(edge: .leading))
                    
                } else {
                    
                    SignInWithEmailView()
                }
            }
            .navigationViewStyle(.stack)
        }
    }
}
