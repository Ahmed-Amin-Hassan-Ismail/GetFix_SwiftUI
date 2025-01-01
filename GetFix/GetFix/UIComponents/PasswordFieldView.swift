//
//  PasswordFieldView.swift
//  GetFix
//
//  Created by Ahmed Amin on 02/01/2025.
//

import SwiftUI

struct PasswordFieldView: View {
    
    // MARK: - Properties
    
    @Binding var passwordText: String
    private let eyeIcon: String = "eye"
    private let eyeSlahIcon: String = "eye.slash"
    @State private var isSecure: Bool = true
    
    
    
    var body: some View {
        ZStack(alignment: .trailing) {
            if isSecure {
                SecureField("Password", text: $passwordText)
                    .font(.regularFont(fontSize: 17))
                    .multilineTextAlignment(.center)
                    .frame(height: 55)
                    .overlay {
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.placeholder.opacity(0.5), lineWidth: 1.0)
                    }
                
            } else {
                
                TextField("Password", text: $passwordText)
                    .font(.regularFont(fontSize: 17))
                    .multilineTextAlignment(.center)
                    .frame(height: 55)
                    .overlay {
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(Color.placeholder.opacity(0.5), lineWidth: 1.0)
                    }
            }
            
            Image(systemName: isSecure ? eyeSlahIcon : eyeIcon)
                .foregroundColor(Color.placeholder)
                .padding()
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        isSecure.toggle()
                    }
                }
        }
    }
}

#Preview {
    PasswordFieldView(passwordText: .constant("123456"))
}
