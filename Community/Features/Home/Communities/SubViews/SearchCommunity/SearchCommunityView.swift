//
//  SearchCommunityView.swift
//  Community
//
//  Created by İsmail Ertuğlu on 26.11.2022.
//

import SwiftUI

struct SearchCommunityView: View, Keyboard{
    
    @State var x:String = ""
    @State private var isKeyboardVisible = false
    @State var goSecond = false
    private func endEditing() {
        UIApplication.shared.endEditing()
    }
    

    var body: some View {
    
        NavigationStack{
            VStack{
                //Search Bar Area
                ZStack{
                    Rectangle().foregroundColor(Color("LightGray"))
                    HStack{
                        Image(systemName: "magnifyingglass").foregroundColor(.gray)
                        TextField("Search",text: $x){
                            UIApplication.shared.endEditing()
                        }.onReceive(keyboardPublisher) { newIsKeyboardVisible in
                            isKeyboardVisible = newIsKeyboardVisible
                        }
                        Image(systemName: "line.3.horizontal.decrease.circle")
                        
                    }.foregroundColor(.gray)
                        .padding(.leading,12)
                    
                }.frame(height: 30)
                    .cornerRadius(12)
                    .padding(.top,40)
                
                Divider()
                
                // Community List Area
                ScrollView{
                    ForEach(Community.communities,id:\.id){ community in
                        //TODO: Custom Community Card
                        NavigationLink(destination:CommunityDetailView(community: community),label: {
                                CommunityCard(community: community)
                            
                        }).buttonStyle(.plain).padding(.vertical,15)
                     
                    }
                }.scrollIndicators(.never)
                
                
            }
             .ignoresSafeArea(.all)
              .onTapGesture {
                self.endEditing()
              }
        }
    }
}

struct SearchCommunityView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCommunityView()
    }
}

