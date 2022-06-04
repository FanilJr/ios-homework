//
//  PostProtocol.swift
//  Navigation
//
//  Created by Fanil_Jr on 05.06.2022.
//

import Foundation
import UIKit

protocol PostProtocol {
    
    var author: String { get }
    var description: String { get }
    var image: UIImage { get }
    var likes: Int { get }
    var views: Int { get }
    
}
