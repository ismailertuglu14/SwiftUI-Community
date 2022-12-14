//
//  User.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import Foundation

struct User:  Codable {
    let id: String
    
    let userName: String?
    let firstName: String?
    let lastName: String?
    
    let posts: [Post]?

    let createdAt: Date?
    let updatedAt: Date?
}

extension User{
    static let users: [User] = [
        User(id: "123213124324123", userName: "ismailertuglu", firstName: "İsmail", lastName: "Ertuğlu", posts:[
            Post(description: "Desc1", likeCount: 1),Post(description: "Desc2", likeCount: 2)],createdAt: Date.now,updatedAt: Date.now),
        
        User(id: "354236436463555", userName: "ismailertuglu14", firstName: "İsmail", lastName: "Ertuğlu", posts:[
        Post(description: "Desc1", likeCount: 1),Post(description: "Desc2", likeCount: 2)],createdAt: Date.now,updatedAt: Date.now),
        
        User(id: "123", userName: "ismailertuglu", firstName: "İsmail", lastName: "Ertuğlu", posts:[
        Post(description: "Desc1", likeCount: 1),Post(description: "Desc2", likeCount: 2)],createdAt: Date.now,updatedAt: Date.now),
        
        User(id: "123", userName: "ismailertuglu", firstName: "İsmail", lastName: "Ertuğlu", posts:[
        Post(description: "Desc1", likeCount: 1),Post(description: "Desc2", likeCount: 2)],createdAt: Date.now,updatedAt: Date.now)
    
    
    ]
}
