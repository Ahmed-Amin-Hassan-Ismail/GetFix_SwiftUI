//
//  LaunchScreen.swift
//  GetFix
//
//  Created by Ahmed Amin on 02/01/2025.
//

import SwiftUI

struct LaunchScreen: View {
    
    // MARK: - Properties
    
    @Binding var shouldShowLaunchScreen: Bool
    
    private(set) var timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    
    var body: some View {
        Image(.splash)
            .resizable()
            .scaledToFill()
            .onReceive(timer) { _ in
                shouldShowLaunchScreen = false
            }
    }
}

#Preview {
    LaunchScreen(shouldShowLaunchScreen: .constant(true))
}
