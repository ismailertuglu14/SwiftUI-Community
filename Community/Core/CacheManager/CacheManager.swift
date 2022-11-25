//
//  CacheManager.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import Foundation




protocol ICacheManager {
    func read(key: CacheEnums.Authenticate) -> String
    func save(key: CacheEnums.Authenticate, value: String)
    func remove(key: CacheEnums.Authenticate)
}

struct CacheManager: ICacheManager {}

extension CacheManager{
    
    func read(key: CacheEnums.Authenticate) -> String {
        guard let value = UserDefaults.standard.value(forKey: key.rawValue) as? String else {return ""}
        return value
    }
    
    func save(key: CacheEnums.Authenticate, value: String){
        UserDefaults.standard.set(value,forKey: key.rawValue)
    }
    
    func remove(key: CacheEnums.Authenticate){
        UserDefaults.standard.removeObject(forKey: key.rawValue)
    }
}

