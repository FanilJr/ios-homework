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
    
    var newButton: UIButton = {
       
     let button = UIButton()
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 14
        button.layer.shadowOpacity = 0.7
        button.setTitle("Change title", for: .normal)
        button.layer.shadowRadius = 4
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(changeButton), for: .touchUpInside)
        return button
       
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(profil)
        addConstrProfil()

        
    }
    
    @objc func changeButton() {
        
       title = "Profile"
       print("новое название профиля - \(title ?? "пустой title")")
        
    }
    
    func addConstrProfil() {
       /// добавляем кнопку и задаём констрейнты
       view.addSubview(newButton)
        
       newButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
       newButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
       newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
       newButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
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
