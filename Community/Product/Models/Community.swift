//
//  Community.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import Foundation

struct Community: Codable {
    var id: String?
    
    var creator: User?
    
    var title: String?
    var description: String?
    var image: String?
    
    var participants: [User]?
    
    var createdDate: Date? = Date.now
}

extension Community{
    static let communities: [Community] = [
        Community(id: "1233414124214", creator: User(id: "123123", userName: "ismailertuglu", firstName: "İsmail", lastName: "Ertuğlu"), title: "FullStack Java Eğitimi", description: "lorem ipsum dolor sit amet consectepum", createdDate: Date.now),
        
        Community(id: "1231241241243", creator: User(id: "123123", userName: "fakeuser123", firstName: "İsmail", lastName: "Ertuğlu"), title: "FullStack Java Eğitimi", description: "lorem ipsum dolor sit amet consectepum", createdDate: Date.now),
    
        Community(id: "1233414124214", creator: User(id: "123123", userName: "ismailertuglu", firstName: "İsmail", lastName: "Ertuğlu"), title: "FullStack Java Eğitimi", description: "lorem ipsum dolor sit amet consectepum", createdDate: Date.now)
    
    
    ]
}
