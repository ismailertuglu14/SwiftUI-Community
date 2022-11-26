//
//  CommunityCard.swift
//  Community
//
//  Created by İsmail Ertuğlu on 26.11.2022.
//

import SwiftUI

struct CommunityCard: View {
    let community: Community
    var body: some View {
        ZStack{
            HStack(alignment:.top, spacing: 15){
                Image("swiftui").resizable().frame(width: 180,height: 100)
                VStack(alignment: .leading){
                    Text(community.description?.shorten(length: 42) ?? "")
                        .font(.caption2)
                    Text("Created by \(community.creator?.firstName ?? "") \(community.creator?.lastName ?? "") ")
                        .font(.caption2)
                        .fontWeight(.light).padding(.top,1)
                    
                    Spacer()
                    Text("Details >>").font(.caption).foregroundColor(Color.red).frame(maxWidth:.infinity , alignment:.trailing)
                }
            }.frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

