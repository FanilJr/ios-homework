//
//  PhotosStruct.swift
//  Navigation
//
//  Created by Fanil_Jr on 10.06.2022.
//

import Foundation

struct Photos {
    
    let image: String
    
    func massivePhoto() -> [Photos] {
        
        var photos = [Photos]()
        let count = 1...21
        
        for number in count {
            photos.append(Photos(image: "photo_\(number)"))
        }
        
        return photos
    }
}
