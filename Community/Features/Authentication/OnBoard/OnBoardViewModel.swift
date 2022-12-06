//
//  OnBoardViewModel.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import Foundation

protocol IOnboardViewModel: ObservableObject{
    
    /// Save to locale that the user logs in for the first time.
    func saveFirst() -> Void
    
    /// Change navigateToHome status to true for navigationLink's property of isActive value.
    func changeNavigateStatus() -> Void
}

class OnBoardViewModel: IOnboardViewModel {
    
    private let cache = CacheManager()
    
    
    @Published var currentIndex = 0
    @Published var onBoardCount: Int = OnBoardModel.onBoardModels.count - 1
    @Published var navigateToHome: Bool = false
    

    func saveFirst() {
        cache.save(key: CacheEnums.Authenticate.IS_FIRST.rawValue, value: CacheEnums.Authenticate.save_is_first)
    }
    
    func changeNavigateStatus(){
        self.navigateToHome = true
    }
    
}
