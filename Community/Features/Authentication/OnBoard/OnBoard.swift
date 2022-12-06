//
//  OnBoard.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import SwiftUI

struct OnBoardModel: Identifiable {
    var id: UUID = UUID()
    let image: String
    let description: String
}


extension OnBoardModel {
    static let onBoardModels: [OnBoardModel] = [
        OnBoardModel(image: "img_deliver", description: "lorem ipsum dolor sit amet" ),
        OnBoardModel(image: "img_deliver-2", description: "lorem ipsum dolor sit amet"),
        OnBoardModel(image: "img_shop", description: "lorem ipsum dolor sit amet")
    ]
}
