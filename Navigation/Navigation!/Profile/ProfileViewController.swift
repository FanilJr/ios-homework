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
        
        /// Кнопка в навигейшн бар - создания поста
        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector(common))
        navigationItem.rightBarButtonItem = barButtonItem
    }
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

        
        profil.backgroundColor = .lightGray
        profil.frame = view.frame
        profil.addElements()
        profil.anchors()
        view.addSubview(profil)

    }
}
