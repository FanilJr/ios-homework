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
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profil.backgroundColor = .lightGray
        profil.frame = UIScreen.main.bounds

        view.addSubview(profil)
        profil.addElements()
        profil.anchors()

    }
}
