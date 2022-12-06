//
//  CommunityDetailView.swift
//  Community
//
//  Created by İsmail Ertuğlu on 27.11.2022.
//

import SwiftUI
import UIKit



struct CommunityDetailView: View {
    
    let community: Community
    
    init(community: Community){
        self.community = community
        UIScrollView.appearance().bounces = false
    }
    
    @State var selection: Int = 0
    private let tabs:[String] = ["Feed","Events","Members","About"]
    var body: some View {
        let coverX: CGFloat = UIScreen.screenWidth/2
        let coverY: CGFloat = UIScreen.screenHeight/4 + 20
      

        ScrollView(.vertical){
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
                
                // Tabs
                    HStack(spacing:24){
                        ForEach(0...3,id:\.hashValue){ value in
                            Text(tabs[value]).font(.title2).foregroundColor(selection == value ? .orange : .black).onTapGesture {
                                selection = value
                            }
                        }
                      
                    }.padding(.horizontal,12)
                Divider().foregroundColor(.gray)
                    .frame(height: 1.0)

                //Event List
                
                if(selection == 0){
                    ForEach(0..<100){value in
                        Text("Feed \(value.description)")
                    }
                }
                if(selection == 1){
                    ForEach(0..<100){value in
                        
                        CommunityCard(community: Community.communities[0])
                    }
                }
                
            }//VStack ending
        }.ignoresSafeArea(.all)
    }
}

struct CommunityDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityDetailView(community: Community.communities[0])
    }
}
