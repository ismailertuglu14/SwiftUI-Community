//
//  PostModel.swift
//  Community
//
//  Created by İsmail Ertuğlu on 25.11.2022.
//

import Foundation

struct Post: Identifiable, Codable {
    var id: UUID = UUID()
    //let user: User
    let description: String
    var image: String?
    //let createdDate: Date
    var likeCount: Int = 0
}

extension Post {
    static let dummyModels: [Post] = [
        Post(description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. 1",  likeCount: 1),
        Post(description: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s 2",  likeCount: 1),
        Post(description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 3", likeCount: 1),
        Post(description: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s 4",  likeCount: 1),
        Post(description: "opposed to using 'Content here, content here 5",  likeCount: 1),
        Post(description: "Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing  6",  likeCount: 1),
        Post(description: "error sit voluptatem accusantium 7quia dolor sit amet, consectetur 13",  likeCount: 1),
        Post(description: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s 8", likeCount: 1),
        Post(description: "Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing  9", likeCount: 1),
        Post(description: "Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing  10",  likeCount: 1),
        Post(description: "with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum 11",  likeCount: 1),
        Post(description: "error sit voluptatem accusantium 12quia dolor sit amet, consectetur 13", image:"heart", likeCount: 1),
        Post(description: " quia dolor sit amet, consectetur 13quia dolor sit amet, consectetur 13", image:"heart", likeCount: 1),
        Post(description: " quia dolor sit amet, consectetur 14quia dolor sit amet, consectetur 13", image:"heart", likeCount: 1),
        Post(description: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you 15", likeCount: 1),
        Post(description: " by Cicero are also reproduced in their exact original form, accompanied 16", image:"heart", likeCount: 1),
        Post(description: " by Cicero are also reproduced in their exact original form, accompanied 17", likeCount: 1),
        Post(description: "with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum 18",  likeCount: 1),
        Post(description: "with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum 19",  likeCount: 1),
        Post(description: "with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum 20",  likeCount: 1),
        Post(description: "with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum 21", likeCount: 1)
        
    ]
}
