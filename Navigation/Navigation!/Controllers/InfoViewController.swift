//
//  InfoViewController.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    let alertButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.layer.cornerRadius = 14
        button.titleLabel?.textColor = .black
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        button.setTitle("Перейти на алерт", for: .normal)
        button.addTarget(self, action: #selector(buttonAlert), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(alertButton)
        alertConstr()
    }
    
        @objc func buttonAlert() {
            let alert = UIAlertController(title: "я те", message: "сказал", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "выубай", style: .default, handler: nil))
            alert.addAction(UIAlertAction(title: "камеру нахуй", style: .destructive, handler: nil))
            self.present(alert, animated: true, completion: nil)
            print("проверяем алерт")
    }
        func alertConstr() {
        NSLayoutConstraint.activate([alertButton.widthAnchor.constraint(equalToConstant: 150), alertButton.heightAnchor.constraint(equalToConstant: 50),
        alertButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
        alertButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)])
    }
}

