//
//  StringExtension.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import Foundation

extension String{
    
    /// Shortens the sentence.
    /// - Parameter length: Maximum word length to be displayed
    /// - Returns: Abbreviated and appended sentence
    func shorten(length: Int = 90) -> String {
        let trailing: String = "..."
        return (self.count > length) ? self.prefix(length) + trailing : self
    }
    
    
    
}
extension String? {
    
    /// Check null safety on runtime, if value is null, return empty string
    /// - Returns: Self or empty string
    func isNil() -> String {
        return self ?? ""
    }
}
