//
//  HomeBuilderModel.swift
//  Community
//
//  Created by İsmail Ertuğlu on 1.12.2022.
//

import SwiftUI

enum NavigationType: String, Hashable {
    case communityDetail = "COMMUNITY_DETAIL"
}

class HomeBuilderModel: ObservableObject {
    
    @Published var mainStack: [NavigationType] = []
}
