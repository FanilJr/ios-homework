//
//  Post.swift
//  Navigation
//
//  Created by Fanil_Jr on 05.06.2022.
//

import Foundation
import UIKit

struct PostStruct {
    
    var author: String
    var description: String
    var image: String
    var likes: Int
    var views: Int

    // MARK: Создаём массив с помощью функции 
    static func massivePost() -> [PostStruct] {
        
        var post = [PostStruct]()
    
        post.append(PostStruct(author: "Fanil_Jr", description: "Скарлет Йохансон", image: ("Johansson"), likes: 500, views: 501))
        post.append(PostStruct(author: "Fanil_Jr", description: "Анджелина Джолли", image: ("Joli"), likes: 666, views: 667))
        post.append(PostStruct(author: "Fanil_Jr", description: "Наталья Самбурская", image: ("Samburskaya"), likes: 550, views: 550))
        post.append(PostStruct(author: "Fanil_Jr", description: "Марго Роби", image:  ("Margo"), likes: 1200, views: 2500))
        post.append(PostStruct(author: "Fanil_Jr", description: "Дженифер Энистон", image: ("Aniston"), likes: 3346, views: 5211))
                
        return post
        
    }
}
