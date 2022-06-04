//
//  Post.swift
//  Navigation
//
//  Created by Fanil_Jr on 05.06.2022.
//

import Foundation
import UIKit

struct Post: PostProtocol {
    
    var author: String
    
    var description: String
    
    var image: UIImage
    
    var likes: Int
    
    var views: Int
    
    
}

// MARK: Массив публикаций
var firstPost = Post(author: "Fanil_Jr", description: "Скарлет Йохансон", image: UIImage(named: "Johansson")!, likes: 500, views: 501)
var twoPost = Post(author: "Fanil_Jr", description: "Анджелина Джолли", image: UIImage(named: "Joli")!, likes: 666, views: 667)
var threePost = Post(author: "Fanil_Jr", description: "Наталья Самбурская", image: UIImage(named: "Samburskaya")!, likes: 550, views: 550)
var fourPost = Post(author: "Fanil_Jr", description: "Марго Роби", image: UIImage(named: "Margo")!, likes: 1200, views: 2500)
var fivePost = Post(author: "Fanil_Jr", description: "Дженифер Энистон", image: UIImage(named: "Aniston")!, likes: 3346, views: 5211)

