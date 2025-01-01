//
//  CGFloat.swift
//  GetFix
//
//  Created by Ahmed Amin on 01/01/2025.
//

import SwiftUI

extension CGFloat {
    
    static var screenWidth: Double {
        
        UIScreen.main.bounds.width
    }
    
    static var screenHeight: Double {
        
        UIScreen.main.bounds.height
    }
    
    static var topInsets: Double {
        
        guard let keyWindow = UIApplication.shared.mainWindow else { return 0.0 }
        
        return keyWindow.safeAreaInsets.top
    }
    
    static var bottomInsets: Double {
        
        guard let keyWindow = UIApplication.shared.mainWindow else { return 0.0 }
        
        return keyWindow.safeAreaInsets.bottom
    }
    
    static var horizontalInsets: Double {
        
        guard let keyWindow = UIApplication.shared.mainWindow else { return 0.0 }
        
        return keyWindow.safeAreaInsets.left + keyWindow.safeAreaInsets.right
        
    }
    
    static var verticalInsets: Double {
        
        guard let keyWindow = UIApplication.shared.mainWindow else { return 0.0 }
        
        return keyWindow.safeAreaInsets.top + keyWindow.safeAreaInsets.bottom
        
    }
}

        
        
