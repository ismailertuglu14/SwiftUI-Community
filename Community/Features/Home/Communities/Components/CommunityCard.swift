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
                Image("swiftui").resizable().frame(width: 180,height: 130)
                VStack(alignment: .leading){
                    
                    Text(community.description?.shorten(length: 42) ?? "")
                        .font(.caption2)
                    Text("Created by \((community.creator?.firstName.isNil())!) \((community.creator?.lastName.isNil())!) ")
                        .font(.caption2)
                        .fontWeight(.light).padding(.top,1)
                    
                    Spacer()
                    
                    Text("Participiants: \(community.participants?.count.description ?? String(1))" ).font(.subheadline).fontWeight(.semibold)
                    
                    /*
                     Text("Details >>").font(.caption).foregroundColor(Color.red).frame(maxWidth:.infinity , alignment:.trailing)
                    */
                }
                .padding(.bottom, 4.0)
                
            }.frame(maxWidth: .infinity,maxHeight: 130, alignment: .leading)
            
        }
        
    }
}

struct CommunityCardView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityCard(community: Community.communities[0])
    }
}
