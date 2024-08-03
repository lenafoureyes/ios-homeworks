//
//  Post.swift
//  Navigation1
//
//  Created by Елена Хайрова on 02.08.2024.
//

import Foundation

struct Post {
    let author: String
    let description: String
    let image: String
    let likes: Int
    let views: Int
}

let posts: [Post] = [
    Post(author: "Meow_Master", description: "Walking my man", image: "selfie1", likes: 10, views: 100),
    Post(author: "Meow_Master", description: "with the brothers in the area", image: "selfie2", likes: 20, views: 200),
    Post(author: "Meow_Master", description: "With my girlfriend", image: "selfie3", likes: 30, views: 300),
    Post(author: "Meow_Master", description: "My brother and I are going to drink", image: "selfie4", likes: 40, views: 400)
]
