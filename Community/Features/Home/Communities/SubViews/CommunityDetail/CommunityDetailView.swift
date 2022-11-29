//
//  CommunityDetailView.swift
//  Community
//
//  Created by İsmail Ertuğlu on 27.11.2022.
//

import SwiftUI
import UIKit

struct CommunityDetailView: View {
    
    init(community: Community){
        self.community = community
        UIScrollView.appearance().bounces = false
    }
    
    let community: Community
    var body: some View {
        let coverX: CGFloat = UIScreen.screenWidth/2
        let coverY: CGFloat = UIScreen.screenHeight/4 + 20
      

        ScrollView{
           
            VStack{
                
                ZStack{
                    Image("imageCover").resizable().frame(height: 250)
                    Image("pp").resizable().frame(width: 150,height: 150).cornerRadius(100).position(x: coverX ,y: coverY)
                }.padding(.bottom,55)
                
                Text("\(community.title.isNil())").font(.title3).fontWeight(.bold)
                
                HStack{
                //  Text("Events: \(community.participants?.count.description ?? String(0))")
                    Text("İstanbul, Turkey")
                    Text("-")
                    Text("Participiants: \(community.participants?.count.description ?? String(0))")
                }.frame(maxWidth:.greatestFiniteMagnitude ,alignment:.center).padding(.vertical,8)
                
                // Join Community Button
                Button("Join Community",action: {
                    print("asd")
                }).buttonStyle(JoinCommunityButtonStyle())
                
                Divider().foregroundColor(.gray)
                    .frame(height: 1.0)
                
               
                    HStack(spacing:24){
                        Text("Feed").font(.title2).foregroundColor(.orange)
                        Text("Events").font(.title2)
                        Text("Members").font(.title2)
                        Text("About").font(.title2)
                    }.padding(.horizontal,12)
                
                
                Divider().foregroundColor(.gray)
                    .frame(height: 1.0)

                //Event List
                ForEach(0..<100){ data in
                    Text(data.description)
                }
                
            }
                
        }.ignoresSafeArea(.all)
    }
}

struct CommunityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityDetailView(community: Community.communities[0])
    }
}
