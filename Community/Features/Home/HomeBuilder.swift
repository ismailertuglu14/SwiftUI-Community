//
//  HomeBuilder.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import SwiftUI

struct HomeBuilder: View {
    
    @State private var tabIndex: Int = 1
    var body: some View {
        //Page View here
        TabView(selection: $tabIndex){
           FeedView().tabItem(){
                Image(systemName:"house")
                Text("Feed")
           }.tag(0)
            
            CommunitiesView().tabItem(){
                Image(systemName:"rectangle.3.group.bubble.left.fill")
                Text("Communities")
            }.tag(1)
            
            CreateView().tabItem(){
                Image(systemName:"plus.circle.fill")
                Text("Create")
            }.tag(2)
            
            Text("4").tabItem(){
                Image(systemName:"message.badge")
                Text("Notifications")
            }.tag(3)
            Text("5").tabItem(){
                Image(systemName:"person")
                Text("Profile")
            }.tag(4)
        }
        //Bottom Navigation Bar here
        
    }
}

struct HomeBuilder_Previews: PreviewProvider {
    static var previews: some View {
        HomeBuilder().ignoresSafeArea(.all)
    }
}
