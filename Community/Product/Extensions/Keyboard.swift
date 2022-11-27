//
//  Keyboard.swift
//  Community
//
//  Created by İsmail Ertuğlu on 26.11.2022.
//

import Combine
import UIKit

protocol Keyboard {
    var keyboardPublisher: AnyPublisher<Bool, Never> { get }
}

extension Keyboard {
    
    /// Detect is keyboard present
    /// - Returns: true of false
    var keyboardPublisher: AnyPublisher<Bool, Never> {
        Publishers.Merge(
            NotificationCenter.default
                .publisher(for: UIResponder.keyboardWillShowNotification)
                .map { _ in true },
            
            NotificationCenter.default
                .publisher(for: UIResponder.keyboardWillHideNotification)
                .map { _ in false }
        )
        .eraseToAnyPublisher()
    }
}

extension UIApplication {
    
    /// Hide Keyboard
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
