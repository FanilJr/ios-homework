//
//  PhotosStruct.swift
//  Navigation
//
//  Created by Fanil_Jr on 10.06.2022.
//

import Foundation
import UIKit

struct Photos {
    
    let image: String
    
   static func massivePhoto() -> [Photos] {
        
        var photos = [Photos]()
        let count = 1...20
        
        for number in count {
            photos.append(Photos(image: "photo_\(number)"))
        }
        
        return photos
    }
}
