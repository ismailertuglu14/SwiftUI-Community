//
//  FeedViewModel.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import SwiftUI

class FeedViewModel: ObservableObject {
    
    @Published var posts: [Post]?
    private var isFirst = true;
    
    func getPosts(){
        if isFirst{
            posts = Post.dummyModels.shuffled()
            isFirst = false;
        }
    }
    
    /// Get new posts when refresh
    func refresh(){
        posts = Post.dummyModels.shuffled()
    }
}
