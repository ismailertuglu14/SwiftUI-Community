//
//  LocaleKeys.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import SwiftUI


struct LocaleKeys {
    
    enum Auth: String {
        case facebook = "signInFacebook"
        case google = "signInGoogle"
        case apple = "signInApple"
        case email = "signUpWithEmail"
    }
    
    enum Buttons: String{
        case getStarted = "getStarted"
    }
    
    enum Login: String{
        case welcomeBack = "welcomeBack"
        case createAccount = "createAccount"
        case termsAndConditions = "termsAndConditions"
    }
    
    enum General: String{
        case emailHint = "emailHint"
        case passwordHint = "passwordHint"
    }
    
}


extension String {
    
    /// It localize any string from Localizable strings
    /// - Returns: Localized value
    func locale()-> LocalizedStringKey{
        return LocalizedStringKey(self)
    }
    
}
