//
//  View.swift
//  GetFix
//
//  Created by Ahmed Amin on 01/01/2025.
//

import SwiftUI

extension View {
    
    // MARK: - Properties
    
    var hideNavigationBar: some View {
        navigationTitle("")
            .navigationBarBackButtonHidden()
            .navigationBarHidden(true)
            .ignoresSafeArea()
    }
    
    var hideNavigationBarWithoutIgnoreSafeArea: some View {
        navigationTitle("")
            .navigationBarBackButtonHidden()
            .navigationBarHidden(true)
    }
    
    var maxCenter: some View {
        return frame(maxWidth: .infinity, alignment: .center)
    }
    
    var maxLeft: some View {
        return frame(maxWidth: .infinity, alignment: .leading)
    }
    
    var maxRight: some View {
        return frame(maxWidth: .infinity, alignment: .trailing)
    }
    
    // MARK: - Methods
    
    func cornerRadius(_ radius: CGFloat, corner: UIRectCorner) -> some View {
        
        clipShape(RoundedCorner(radius: radius, corner: corner))
    }
    
    func backgroundNavigationLink(content: some View, isActive: Binding<Bool>) -> some View {
        
        background(NavigationLink(destination: content, isActive: isActive, label: { EmptyView() }))
    }
}
