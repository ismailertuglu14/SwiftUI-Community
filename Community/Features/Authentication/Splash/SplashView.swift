//
//  SplashView.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import SwiftUI



struct SplashView: View {
    @StateObject var splashViewModel: SplashViewModel = SplashViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack{
                Image("splash").resizable().frame(width: 350,height: 550)
                
                NavigationLink("",destination: VStack{
                    if(splashViewModel.isFirst){
                        OnBoardView()
                    }else{
                        HomeBuilder()
                    }
                }, isActive: $splashViewModel.isNavigate)
            }.frame(maxHeight:.infinity, alignment:.top).onAppear{
                splashViewModel.navigateToNextPage()
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
