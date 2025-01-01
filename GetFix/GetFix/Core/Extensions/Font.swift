//
//  Font.swift
//  GetFix
//
//  Created by Ahmed Amin on 01/01/2025.
//

import SwiftUI

extension Font {
    
    private enum FontName: String {
        
        case regular = "Roboto-Regular"
        case bold = "Roboto-Bold"
    }
    
    
    static func regularFont(fontSize: CGFloat = 16.0) -> Font {
        
        Font.custom(FontName.regular.rawValue, size: fontSize)
    }
    
    static func boldFont(fontSize: CGFloat = 16.0) -> Font {
        
        Font.custom(FontName.bold.rawValue, size: fontSize)
    }
    
}

