//
//  Comment.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import Foundation

struct Comment: Identifiable, Codable {
    
    var id: UUID = UUID()
    
    var userId: String?
    var userImage: String?
    
    var comment: String?
    var replies: [Comment]?
    
    var likeCount: Int = 0
    
    var createdDate: Date? = Date.now
}
