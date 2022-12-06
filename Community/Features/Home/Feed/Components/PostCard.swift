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
            
            HStack(alignment: .top){
                Image("pp").resizable().cornerRadius(50).frame(width: 60,height: 65)
                VStack(alignment: .leading){
                    Text("Flutter Devs")
                    //Text("82.627 followers")
                    Spacer()
                    Text("12h")
                    Spacer().frame(height: 20)
                }.padding([.top,.leading],PagePadding.All.low.rawValue)
                Spacer()
                Image(systemName: "ellipsis").padding(.top,PagePadding.All.low.rawValue)
            }.frame(maxWidth: .infinity, alignment: .leading)
            VStack(alignment: .leading){
                Text(post.description.shorten()).multilineTextAlignment(.leading)
                Image(systemName: post.image.isNil()).resizable().frame(height: post.image != nil ? 200 : 0).scaledToFit()
                Divider()
                HStack{
                    Image(systemName: "hand.thumbsup")
                    Text(post.likeCount.description)
                    Spacer()
                    
                    Text("Yorum Yap")
                    Text("Beğen")
                }.frame(maxWidth:.infinity)
                Divider()
            }
            
        }
    }
}

struct PostCard_Previews: PreviewProvider {
    static var previews: some View {
        PostCard(post: Post.dummyModels[0]).fixedSize(horizontal:false,vertical: true).padding()
        
    }
}
