//
//  CommunityDetailView.swift
//  Community
//
//  Created by İsmail Ertuğlu on 27.11.2022.
//

import SwiftUI

struct CommunityDetailView: View {
    let community: Community
    var body: some View {
        ScrollView{
            VStack{
                ZStack{
                    Image("imageCover").resizable().frame(height: 250)
                    Image("pp").resizable().frame(width: 150,height: 150).cornerRadius(100).position(x:UIScreen.screenWidth/2,y:UIScreen.screenHeight/4 + 20)
                }.padding(.bottom,55)
                
                Text("\(community.title.isNil())").font(.title3).fontWeight(.bold)
                
                HStack{
                    Text("Events: \(community.participants?.count.description ?? String(0))")
                    Text("Participiants: \(community.participants?.count.description ?? String(0))")
                }.frame(maxWidth:.greatestFiniteMagnitude ,alignment:.center).padding()
                
                // Join Community Button
                Button("Join Community",action: {
                    print("asd")
                }).buttonStyle(JoinCommunityButtonStyle())
                
                //Event List
            }
                
        }.ignoresSafeArea(.all)
        
    }
}

struct CommunityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityDetailView(community: Community.communities[0])
    }
}
