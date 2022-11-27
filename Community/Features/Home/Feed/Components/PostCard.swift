//
//  PostCard.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import SwiftUI

struct PostCard: View {
    let post: Post
    var body: some View {
        VStack(alignment:.leading){
            
            HStack(){
                Image(systemName:"person").resizable().frame(width: 50,height: 60)
                VStack(alignment: .leading){
                    Text("Flutter Devs")
                    Text("82.627 followers")
                    Text("12h")
                    Spacer().frame(height: 20)
                }
            }
            VStack(alignment: .leading){
                Text(post.description.shorten()).multilineTextAlignment(.leading)
                Image(systemName: post.image.isNil()).resizable().frame(height: post.image != nil ? 200 : 0).scaledToFit()
                Divider()
                HStack{
                    Image(systemName: "hand.thumbsup")
                    Text(post.likeCount.description)
                }
                Divider()
            }
            
        }
    }
}

