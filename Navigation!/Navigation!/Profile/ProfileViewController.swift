//
//  ProfileViewController.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profil = ProfileHeaderView()
    
    let myView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .white
        return myView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func createViewContstraints() {
      var constraints = [NSLayoutConstraint]()
            
            constraints.append(myView.leadingAnchor.constraint(equalTo: view.leadingAnchor))
            constraints.append(myView.trailingAnchor.constraint(equalTo: view.trailingAnchor))
            constraints.append(myView.bottomAnchor.constraint(equalTo: view.bottomAnchor))
            constraints.append(myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
            
            NSLayoutConstraint.activate(constraints)
        }
        
        view.addSubview(myView)
        view.addSubview(profil)
        createViewContstraints()
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        profil.translatesAutoresizingMaskIntoConstraints = false
        profil.backgroundColor = .lightGray
        
       func createViewContstraints() {
        var constraints = [NSLayoutConstraint]()
            
            constraints.append(profil.leadingAnchor.constraint(equalTo: myView.leadingAnchor))
            constraints.append(profil.trailingAnchor.constraint(equalTo: myView.trailingAnchor))
            constraints.append(profil.bottomAnchor.constraint(equalTo: myView.bottomAnchor))
            constraints.append(profil.topAnchor.constraint(equalTo: myView.safeAreaLayoutGuide.topAnchor))
            
            NSLayoutConstraint.activate(constraints)
        }
        
       func createPhotoAnchor() {
           
           profil.photo.leftAnchor.constraint(equalTo: profil.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
            profil.photo.topAnchor.constraint(equalTo: profil.topAnchor, constant: 16).isActive = true
            profil.photo.widthAnchor.constraint(equalToConstant: 120).isActive = true
            profil.photo.heightAnchor.constraint(equalToConstant: 120).isActive = true
           
        }
        
        func createButtonAnchor() {
            
            profil.knopka.leftAnchor.constraint(equalTo: profil.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
            profil.knopka.rightAnchor.constraint(equalTo: profil.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
           profil.knopka.topAnchor.constraint(equalTo: profil.textfield.bottomAnchor, constant: 16).isActive = true
            profil.knopka.heightAnchor.constraint(equalToConstant: 50).isActive = true
            
        }
        
        func createLabelAnchor() {
            
            profil.zagolovok.leftAnchor.constraint(equalTo: profil.photo.rightAnchor, constant: 15).isActive = true
            profil.zagolovok.topAnchor.constraint(equalTo: profil.topAnchor, constant: 27).isActive = true
            profil.zagolovok.heightAnchor.constraint(equalToConstant: 50).isActive = true
            
        }
        
        func createTextAnchor() {
            
            profil.text.leftAnchor.constraint(equalTo: profil.photo.rightAnchor, constant: 15).isActive = true
            profil.text.bottomAnchor.constraint(equalTo: profil.textfield.topAnchor,constant: -16).isActive = true
            profil.text.topAnchor.constraint(equalTo: profil.zagolovok.bottomAnchor, constant: 16).isActive = true
            
        }
        
        func textFieldAnchor() {
            profil.textfield.leftAnchor.constraint(equalTo: profil.photo.rightAnchor, constant: 15).isActive = true
            profil.textfield.rightAnchor.constraint(equalTo: profil.safeAreaLayoutGuide.rightAnchor, constant:  -16).isActive = true
            profil.textfield.heightAnchor.constraint(equalToConstant: 40).isActive = true
            
        }

        view.addSubview(profil)
        createViewContstraints()
        createPhotoAnchor()
        createButtonAnchor()
        createLabelAnchor()
        createTextAnchor()
        textFieldAnchor()
    }
}
