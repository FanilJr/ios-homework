//
//  ProfileViewController.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    lazy var profil: ProfileHeaderView = {
        
        let profile = ProfileHeaderView()
        profile.backgroundColor = .lightGray
        profile.addElementAndAnchors()
        return profile
        
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(profil)
        addConstrProfil()

        
    }
    
    
    func addConstrProfil() {
        /// задаём констрейнты для profil
        profil.translatesAutoresizingMaskIntoConstraints = false
        profil.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        profil.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        profil.heightAnchor.constraint(equalToConstant: 220).isActive = true
        profil.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        
    }
    
   override func viewWillLayoutSubviews() {
       super.viewWillLayoutSubviews()
      
    }
}
