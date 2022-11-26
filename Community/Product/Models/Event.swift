//
//  Event.swift
//  Community
//
//  Created by İsmail Ertuğlu on 26.11.2022.
//

import Foundation

struct Event: Identifiable, Codable {
    var id: UUID = UUID()
    let eventId: String?
    
    let title:String?
    let description: String?
    let image: String?
    
    let creator: User?
   
    let location: String?
    
    let participiantLimit: Int?
    let participiants: [User]?
    let endDate: Date?
    
    
    
}


