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
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                
                if shouldShowLaunchScreen {
                    LaunchScreen(shouldShowLaunchScreen: $shouldShowLaunchScreen)
                        .transition(.move(edge: .leading))
                    
                } else {
                    
                    LoginView()
                }
            }
            .navigationViewStyle(.stack)
        }
    }
}
