//
//  OnBoardView.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import SwiftUI

struct OnBoardView: View {
   
    
    @StateObject var onBoardViewModel: OnBoardViewModel = OnBoardViewModel()
    
   
    
    var body: some View {
        
        NavigationView {
            TabView(selection: $onBoardViewModel.currentIndex, content: {
                ForEach(0...onBoardViewModel.onBoardCount,id: \.self, content: { index in
                    VStack(alignment: .center){
                        Spacer()
                        Image(OnBoardModel.onBoardModels[index].image).resizable().frame(width: 300,height: 400)
                        Spacer()
                        Text(OnBoardModel.onBoardModels[index].description)
                        Spacer()
                        
                        //MARK: Get Started Button condition
                        if index == onBoardViewModel.onBoardCount {
                            GetStartedButton(onBoardViewModel: onBoardViewModel)
                            // Navigate to Home Screen
                            NavigationLink("",destination: HomeBuilder(),isActive: $onBoardViewModel.navigateToHome)
                        }
                        
                        
                    }.frame(maxHeight: .infinity,alignment:.top).padding(PagePadding.All.xLarge.rawValue)

                })
            }).tabViewStyle(.page(indexDisplayMode: .never))
        }
    }
}

struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView()
    }
}

struct GetStartedButton: View {
let onBoardViewModel: OnBoardViewModel
    var body: some View {
        Button(action:{
            onBoardViewModel.changeNavigateStatus()
            onBoardViewModel.saveFirst()
        }, label:{
            Text("Get Started")
                .font(.headline)
                .fontWeight(.bold)
        }).frame(maxWidth: 200,maxHeight: 50).background(.green).foregroundColor(.white).cornerRadius(CornerRadius.small.rawValue)
    }
}
