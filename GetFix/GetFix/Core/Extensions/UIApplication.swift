//
//  UIApplication.swift
//  GetFix
//
//  Created by Ahmed Amin on 01/01/2025.
//

import SwiftUI


extension UIApplication {
    
    var mainWindow: UIWindow? {
        
        UIApplication
            .shared
            .connectedScenes
            .flatMap({ ($0 as? UIWindowScene)?.windows ?? [] })
            .last { $0.isKeyWindow }
    }
}
