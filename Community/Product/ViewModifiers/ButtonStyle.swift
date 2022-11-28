//
//  ButtonStyle.swift
//  Community
//
//  Created by İsmail Ertuğlu on 27.11.2022.
//

import SwiftUI

struct JoinCommunityButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View { // accent color yerine daha sağlıklı bir renk kullan.
        configuration.label.foregroundColor(configuration.isPressed ? .accentColor : .white )
            .padding()
            .background(.green)
            .cornerRadius(20)
            
    }
}
