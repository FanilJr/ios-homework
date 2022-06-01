//
//  ProfileViewController.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profil = ProfileHeaderView()
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
        view.backgroundColor = .gray
        profil.backgroundColor = .lightGray
        view.addSubview(profil)
        
        
        profil.translatesAutoresizingMaskIntoConstraints = false
        profil.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        profil.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        profil.heightAnchor.constraint(equalToConstant: 220).isActive = true
        profil.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        
        /// Кнопка в навигейшн бар - создания поста
        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector(common))
        navigationItem.rightBarButtonItem = barButtonItem
        
        profil.backgroundColor = .lightGray
        profil.addElements()
        profil.anchors()
       // view.addSubview(profil)
    }
    
    //@objc func changeButton() {
    @objc func changeButton() {
        profil.titleName.text = "sa"
    }
        
  //  }
        /// вызов алерта
    @objc func common() {
        let alert = UIAlertController(title: "упс...", message: "Создание поста в разработке", preferredStyle: .alert)
        let _ = UIAlertAction(title: "OK", style: .default, handler: nil)
        let alertCancel = UIAlertAction(title: "Закрыть", style: .destructive, handler: nil)
        alert.addAction(alertCancel)
        self.present(alert, animated: true, completion: nil)
        print("проверяем алерт поста")
        
    }
    
   override func viewWillLayoutSubviews() {
       super.viewWillLayoutSubviews()
       view.addSubview(newButton)
 
       
       newButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
       newButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
       newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
       newButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
       }

   }
