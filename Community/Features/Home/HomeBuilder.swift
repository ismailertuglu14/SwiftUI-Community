//
//  HomeBuilder.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import SwiftUI

struct HomeBuilder: View {
    
    var body: some View {
        //Page View here
        TabView{
           FeedView().tabItem(){
                Image(systemName:"house")
                Text("Feed")
            }
            Text("2").tabItem(){
                Image(systemName:"rectangle.3.group.bubble.left.fill")
                Text("Communities")
            }
            Text("3").tabItem(){
                Image(systemName:"magnifyingglass")
                Text("Search")
            }
            Text("4").tabItem(){
                Image(systemName:"message.badge")
                Text("Notifications")
            }
            Text("5").tabItem(){
                Image(systemName:"person")
                Text("Profile")
            }
        }
        //Bottom Navigation Bar here
        
    }
}

struct HomeBuilder_Previews: PreviewProvider {
    static var previews: some View {
        HomeBuilder().ignoresSafeArea(.all)
    }
}
