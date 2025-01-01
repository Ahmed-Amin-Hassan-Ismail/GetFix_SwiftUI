//
//  RoundedCorner.swift
//  GetFix
//
//  Created by Ahmed Amin on 01/01/2025.
//

import SwiftUI

struct RoundedCorner: Shape {
    
    var radius: CGFloat = .infinity
    var corner: UIRectCorner = .allCorners
    
    nonisolated func path(in rect: CGRect) -> Path {
        
        let bezierPath = UIBezierPath(roundedRect: rect, byRoundingCorners: corner,
                                      cornerRadii: CGSize(width: radius, height: radius))
        
        let path = Path(bezierPath.cgPath)
        
        return path
    }
}
