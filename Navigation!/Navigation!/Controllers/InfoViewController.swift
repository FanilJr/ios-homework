//
//  InfoViewController.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        let alertButton = UIButton()
        alertButton.translatesAutoresizingMaskIntoConstraints = false
        alertButton.backgroundColor = .black
        alertButton.layer.cornerRadius = 14
        alertButton.titleLabel?.textColor = .black
        alertButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        alertButton.setTitle("Перейти на алерт", for: .normal)
        alertButton.addTarget(self, action: #selector(buttonAlert), for: .touchUpInside)
        
        view.addSubview(alertButton)
    
        NSLayoutConstraint.activate([alertButton.widthAnchor.constraint(equalToConstant: 150), alertButton.heightAnchor.constraint(equalToConstant: 50),
        alertButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
        alertButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)])
       
    }
    
        @objc func buttonAlert() {
            let alert = UIAlertController(title: "привет", message: "это алерт", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "че каво", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            print("проверяем алерт")
    }
}

