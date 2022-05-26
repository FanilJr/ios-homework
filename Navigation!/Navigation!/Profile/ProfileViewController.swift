//
//  ProfileViewController.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    var profil = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        view.frame = CGRect(x: view.safeAreaInsets.left, y: view.safeAreaInsets.top, width: 0, height: 0)

        view.addSubview(profil)

    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("привет это фрэйм вью\(view.frame)")
        NSLog("размер = \(self.view.bounds)")
        
        // MARK: доделать!!!!!!!!!!!!!!!!!!!!!
        
        profil.translatesAutoresizingMaskIntoConstraints = false
        profil.frame = CGRect(x: 0, y: 0, width: 390, height: 844)
        print("это профиля фрейм \(profil.frame)")
        
        view.addSubview(profil)
        
        
    }
}
