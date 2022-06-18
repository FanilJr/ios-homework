//
//  PhotosStruct.swift
//  Navigation
//
//  Created by Fanil_Jr on 10.06.2022.
//

import Foundation
import UIKit

var galery: [UIImage] {
    var galeryPhoto = [UIImage]()
    for i in 1...20 {
        galeryPhoto.append(UIImage(named: "G\(i)")!)
    }
    return galeryPhoto
}
