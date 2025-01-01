//
//  SignInWithEmailViewModel.swift
//  GetFix
//
//  Created by Ahmed Amin on 02/01/2025.
//

import Foundation

enum SocialMedia {
    
    case facebook
    case google
    case instagram
    
    var imageName: String {
        switch self {
        case .facebook:
            "fb"
        case .google:
            "google"
        case .instagram:
            "in"
        }
    }
}

final class SignInWithEmailViewModel: ObservableObject {
    
    
    // MARK: - Properties
    
    @Published var emailText: String = ""
    @Published var passwordText: String = ""
    
    
    // MARK: - Methods
    
    func signInWithEmail() {
        
    }
    
    func forgetPassword() {
        
    }
    
    func signInWithMobileNumber() {
        
    }
    
    func signInWithSocialMedia(type: SocialMedia) {
        
    }
    
    func signUp() {
        
    }
}

