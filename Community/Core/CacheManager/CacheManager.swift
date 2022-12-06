//
//  CacheManager.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import Foundation




protocol ICacheManager {
    func read(key: String) -> String
    func save(key: String, value: String)
    func remove(key: String)
}

struct CacheManager: ICacheManager {}

extension CacheManager{
    
    /// Return value from local storage
    /// - Parameter key: String
    /// - Returns: String?
    func read(key: String) -> String {
        guard let value = UserDefaults.standard.value(forKey: key) as? String else {return ""}
        return value
    }
    
    /// Save value to local storage
    /// - Parameters:
    ///   - key: String
    ///   - value: String
    func save(key: String, value: String){
        UserDefaults.standard.set(value,forKey: key)
    }
    
    /// Remove key and value from local storage
    /// - Parameter key: String
    func remove(key: String){
        UserDefaults.standard.removeObject(forKey: key)
    }
}

