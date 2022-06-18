//
//  UITabBar.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import Foundation
import UIKit

// MARK: решил добавить прозрачости табБару

extension UITabBar {
    
    static func setTransparentTabbar() {
        
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().shadowImage     = UIImage()
        UITabBar.appearance().clipsToBounds   = true
        
    }
}

