//
//  PostService.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import Foundation

protocol IPostService{
    
    func createPost(post: Post) -> Void
    func updatePost(id:String, post:Post) -> Void
    func likePost(id:String) -> Void
    func commentPost(id:String, comment: Comment) -> Void
    func replyComment(id: String, comment: Comment) -> Void
    func updateComment(id: String, comment: Comment) -> Void
    func likeComment(id:String)
}

class PostService: IPostService {
 
    func createPost(post: Post) {}
    
    func updatePost(id: String, post: Post) {}
    
    func likePost(id: String) {}
    
    func commentPost(id: String, comment: Comment) {}
    
    func replyComment(id: String, comment: Comment) {}
    
    func likeComment(id: String) {}
    
    func updateComment(id: String, comment: Comment) {}
}
