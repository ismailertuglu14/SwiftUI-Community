//
//  Community.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import Foundation

struct Community:Identifiable, Codable {
    var id: UUID = UUID()
    
    var creator: User?
    
    var title: String?
    var description: String?
    var image: String?
    
    var participants: [User]?
    
    var createdDate: Date?
}

extension Community{
    static let communities: [Community] = [
        Community(creator: User(id: "123123", userName: "ismailertuglu", firstName: "İsmail", lastName: "Ertuğlu",posts: nil), title: "FullStack Java Eğitimi", description: "lorem ipsum dolor sit amet consectepum"),
        
        Community( creator: User(id: "123123", userName: "fakeuser123", firstName: "İsmail", lastName: "Ertuğlu",posts: nil), title: "FullStack Java Eğitimi", description: "lorem ipsum dolor sit amet consectepum"),
    
        Community( creator: User(id: "123123", userName: "ismailertuglu", firstName: "İsmail", lastName: "Ertuğlu",posts: nil), title: "FullStack Java Eğitimi", description: "lorem ipsum dolor sit amet consectepum"),
        Community( creator: User(id: "123123", userName: "ismailertuglu", firstName: "İsmail", lastName: "Ertuğlu",posts: nil), title: "FullStack Java Eğitimi", description: "lorem ipsum dolor sit amet consectepum"),
        Community(creator: User(id: "123123", userName: "ismailertuglu", firstName: "İsmail", lastName: "Ertuğlu",posts: nil), title: "FullStack Java Eğitimi", description: "lorem ipsum dolor sit amet consectepum"),
        Community( creator: User(id: "123123", userName: "ismailertuglu", firstName: "İsmail", lastName: "Ertuğlu",posts: nil), title: "FullStack Java Eğitimi", description: "lorem ipsum dolor sit amet consectepum"),
        Community(creator: User(id: "123123", userName: "ismailertuglu", firstName: "İsmail", lastName: "Ertuğlu",posts: nil), title: "FullStack Java Eğitimi", description: "lorem ipsum dolor sit amet consectepum")
    ]
    
}
