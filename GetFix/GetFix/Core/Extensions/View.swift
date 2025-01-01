//
//  View.swift
//  GetFix
//
//  Created by Ahmed Amin on 01/01/2025.
//

import SwiftUI

extension View {
    
    func cornerRadius(_ radius: CGFloat, corner: UIRectCorner) -> some View {
        
        clipShape(RoundedCorner(radius: radius, corner: corner))
    }
}
