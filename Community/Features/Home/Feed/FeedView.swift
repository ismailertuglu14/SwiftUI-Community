//
//  FeedView.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import SwiftUI

struct FeedView: View {
    @StateObject var feedViewModel: FeedViewModel = FeedViewModel()
    private let cols = [
        GridItem(.flexible()),
        
    ]
    var body: some View {
        NavigationView{
            
            ScrollView(.vertical,showsIndicators: false){
                Spacer().frame(height: 50)
                LazyVGrid(columns: cols){
                    ForEach(feedViewModel.posts ?? [] ){ post in
                        
                        PostCard(post: post)
                        
                        Spacer().frame(height: 100)
                    }
                }
            }
        
        }.padding()
        .onAppear(perform: feedViewModel.getPosts)
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

