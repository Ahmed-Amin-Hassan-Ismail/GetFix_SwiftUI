//
//  Color.swift
//  GetFix
//
//  Created by Ahmed Amin on 01/01/2025.
//

import SwiftUI

extension Color {
    
    static var primaryApp: Color {
        return Color(hex: "ffd700")
    }
    
    static var secondaryApp: Color {
        return Color(hex: "022C43")
    }
    
    static var primaryText: Color {
        return Color(hex: "022C43")
    }
    
    static var secondaryText: Color {
        return Color(hex: "878787")
    }
    
    static var title: Color {
        return Color(hex: "312C66")
    }
    
    static var placeholder: Color {
        return Color(hex: "a4a4a4")
    }
    
    static var chatTextBG: Color {
        return Color(hex: "115173")
    }
    
    static var chatTextBG2: Color {
        return Color(hex: "F4F6FF")
    }
    
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: .alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
            case 3: // RGB(12 -bit)
                (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
            case 6: // RGB (24-bit)
                (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
            case 8: // ARGB (32-bit)
                (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
            default:
                (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}


