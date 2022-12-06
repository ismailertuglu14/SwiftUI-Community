//
//  HomeBuilder.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import SwiftUI

struct HomeBuilder: View {
    
    @StateObject private var homebuilderModel = HomeBuilderModel()
    init() {
        UITabBar.appearance().isTranslucent = false;
    }
    
   
    var body: some View {
        //Page View here
        NavigationStack(path:$homebuilderModel.mainStack) {
            
            TabView{
               FeedView().tabItem(){
                    Image(systemName:"house")
                    Text("Feed")
               }
                
                CommunitiesView().tabItem(){
                    Image(systemName:"rectangle.3.group.bubble.left.fill")
                    Text("Communities")
                }
                
                CreateView().tabItem(){
                    Image(systemName:"plus.circle.fill")
                    Text("Create")
                }
                
                Text("4").tabItem(){
                    Image(systemName:"message.badge")
                    Text("Notifications")
                }
                Text("5").tabItem(){
                    Image(systemName:"person")
                    Text("Profile")
                }
            }.edgesIgnoringSafeArea(.all)
            
        }.navigationBarBackButtonHidden()
        
    }
}

struct HomeBuilder_Previews: PreviewProvider {
    static var previews: some View {
        HomeBuilder().ignoresSafeArea(.all)
    }
}
