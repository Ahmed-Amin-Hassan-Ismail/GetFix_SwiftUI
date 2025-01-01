//
//  SignInWithEmailView.swift
//  GetFix
//
//  Created by Ahmed Amin on 02/01/2025.
//

import SwiftUI

struct SignInWithEmailView: View {
    
    // MARK: - Properties
    
    @StateObject private var viewModel = SignInWithEmailViewModel()
    
    // MARK: - Body
    
    var body: some View {
        ScrollView {
            ZStack {
                Image(.bg)
                    .resizable()
                    .scaledToFit()
                
                VStack {
                    Image(.logo)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .screenWidth * 0.7)
                    
                    signInView
                    
                }
            }
        }
    }
}

// MARK: - Views

extension SignInWithEmailView {
    
    private var signInView: some View {
        
        VStack {
            VStack(spacing: 15) {
                Text("Sign In")
                    .font(.boldFont(fontSize: 32))
                    .padding(.top, 15)
                
                emailAndPassword
                
                HStack {
                    forgetPassword
                    Text(" | ")
                    signInWithMobile
                }
                
                Text("Or Sign in with")
                    .font(.regularFont(fontSize: 14))
                    .foregroundColor(.placeholder)
                
                signInWithSocialMedia
            }
            .padding(.horizontal, 50)
            .padding(.vertical, 25)
            .frame(width: .screenWidth * 0.9)
            .background(
                Color.white
                    .cornerRadius(25)
                    .shadow(radius: 2, y: 2)
            )
            .padding(.vertical, 25)
            
            
            signUpView
        }
    }
    
    private var emailAndPassword: some View {
        
        VStack(spacing: 15) {
            TextField("Email", text: $viewModel.emailText)
                .font(.regularFont(fontSize: 17))
                .multilineTextAlignment(.center)
                .frame(height: 55)
                .overlay {
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.placeholder.opacity(0.5), lineWidth: 1.0)
                }
            
            PasswordFieldView(passwordText: $viewModel.passwordText)
            
            Button {
                viewModel.signInWithEmail()
            } label: {
                Text("Sign In".uppercased())
                    .font(.boldFont(fontSize: 17))
                    .padding()
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .maxCenter
                    .background(Color.primaryApp)
                    .cornerRadius(30)
                    .shadow(radius: 2, y: 3)
            }
        }
    }
    
    private var forgetPassword: some View {
        
        Button {
            viewModel.forgetPassword()
            
        } label: {
            
            Text("Forget Password")
                .font(.regularFont(fontSize: 14))
                .foregroundColor(.primaryText)
                
        }
    }
    
    private var signInWithMobile: some View {
        
        Button {
            viewModel.signInWithMobileNumber()
        } label: {
            
            Text("OTP Login")
                .font(.regularFont(fontSize: 14))
                .foregroundColor(.primaryText)
        }
    }
    
    private var signInWithSocialMedia: some View {
        
        HStack {
            setupSocialMediaButton(type: .facebook)
            Spacer()
            setupSocialMediaButton(type: .google)
            Spacer()
            setupSocialMediaButton(type: .instagram)
           
        }
    }
    
    private var signUpView: some View {
        
        Button {
            viewModel.signUp()
        } label: {
            Text("sing up".uppercased())
                .font(.regularFont(fontSize: 17))
                .foregroundColor(.primaryText)
                .frame(minHeight: 55)
                .frame(width: .screenWidth * 0.6)
                .overlay {
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.primaryText, lineWidth: 1.0)
                }
        }
    }
    
    private func setupSocialMediaButton(type: SocialMedia) -> some View {
     
        Button {
            viewModel.signInWithSocialMedia(type: type)
        } label: {
            Image(type.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
        }
    }
}


#Preview {
    SignInWithEmailView()
}
