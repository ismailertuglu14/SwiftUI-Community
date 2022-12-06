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
    @StateObject private var homebuilderModel = HomeBuilderModel()

    private func endEditing() {
        UIApplication.shared.endEditing()
    }
 
    

    var body: some View {
        
        NavigationStack (path:$homebuilderModel.mainStack){
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
                            CommunityCard(community: community)
                                .padding(.bottom,8)
                                .onTapGesture {
                                homebuilderModel.mainStack.append(.communityDetail)
                                }
                                .navigationDestination(for: NavigationType.self){ value in
                                switch value {
                                case .communityDetail: CommunityDetailView(community: community)
                                }
                            }
                        }
                    }.scrollIndicators(.never)
                    
                    
                }//Vstack ending
                 .ignoresSafeArea(.all)
                 .onTapGesture {
                    self.endEditing()
                 }
        }//Navigation Stack Ending
        
    }
}

struct SearchCommunityView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCommunityView()
    }
}

