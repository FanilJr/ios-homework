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
        
        profil = ProfileHeaderView(frame: CGRect.zero)
        

        
        view.backgroundColor = .lightGray
        view.addSubview(profil)

  
    }
    
}
