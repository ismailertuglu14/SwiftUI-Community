//
//  SplashViewModel.swift
//  Community
//
//  Created by İsmail Ertuğlu on 4.12.2022.
//

import SwiftUI

protocol ISplashViewModel: ObservableObject {
    
    /// After [Duration] seconds later navigate to destination page
    func navigateToNextPage() -> Void

    /// cacheManager.read(key: CacheEnums.Authenticate.IS_FIRST.rawValue) == CacheEnums.Authenticate.save_is_first ? true : false
    func getIsFirstData() -> Void
    
    /// Change isNavigate parameter's value false to true for navigationLink's isActive label
    func changeIsNavigate() -> Void
}

final class SplashViewModel: ISplashViewModel {
    
    let cacheManager: CacheManager = CacheManager()
    
    
    @Published var isNavigate: Bool = false
    @Published var isFirst: Bool = false
    
    func navigateToNextPage(){
        self.getIsFirstData()
        DispatchQueue.main.asyncAfter(deadline: .now() + DurationEnums.medium.rawValue){
            self.changeIsNavigate()
        }
    }
    
    func getIsFirstData(){
        isFirst = cacheManager.read(key: CacheEnums.Authenticate.IS_FIRST.rawValue) == CacheEnums.Authenticate.save_is_first ? true : false     
    }
    
    func changeIsNavigate(){
        isNavigate = true;
    }
    
}
