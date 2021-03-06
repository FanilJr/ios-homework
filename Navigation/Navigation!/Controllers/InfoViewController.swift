//
//  InfoViewController.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    /// Создание кпоки алерта
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
    
    /// Метод вызова алерта
        @objc func buttonAlert() {
            let alert = UIAlertController(title: "Внимание", message: "Редактирование запрещено", preferredStyle: .alert)
           let alertOK = UIAlertAction(title: "OK", style: .default, handler: nil)
            let alertCancel = UIAlertAction(title: "Закрыть", style: .destructive, handler: {_ in
                print("проверяем алерт")})
            alert.addAction(alertOK)
            alert.addAction(alertCancel)
            self.present(alert, animated: true, completion: nil)

    }
    
    /// Установка констрейнтов кнопки
        func alertConstr() {
        NSLayoutConstraint.activate([alertButton.widthAnchor.constraint(equalToConstant: 150), alertButton.heightAnchor.constraint(equalToConstant: 50),
        alertButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
        alertButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)])
    }
}

