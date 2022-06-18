//
//  ProfileHeaderView.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private var statusText: String = ""
    
    // MARK: - Создание объектов
        
        private let avatarImageView: UIImageView = {
            let avatarImageView = UIImageView()
            avatarImageView.image = UIImage(named: "1")
            avatarImageView.layer.borderWidth = 3
            avatarImageView.layer.borderColor = UIColor.white.cgColor
            avatarImageView.layer.cornerRadius = 60
            avatarImageView.clipsToBounds = true
            avatarImageView.translatesAutoresizingMaskIntoConstraints = false
            return avatarImageView
        }()
        
        private let fullNameLabel: UILabel = {
            let fullNameLabel = UILabel()
            fullNameLabel.text = "Fanil_Jr"
            fullNameLabel.textColor = .black
            fullNameLabel.font = .systemFont(ofSize: 18, weight: .bold)
            fullNameLabel.translatesAutoresizingMaskIntoConstraints = false
            return fullNameLabel
        }()
        
        private let statusLabel: UILabel = {
            let statusLabel = UILabel()
            statusLabel.text = "Waiting for something..."
            statusLabel.textColor = .gray
            statusLabel.font = .systemFont(ofSize: 14, weight: .regular)
            statusLabel.translatesAutoresizingMaskIntoConstraints = false
            return statusLabel
        }()
        
        private let statusTextField: UITextField = {
            let statusTextField = UITextField()
            statusTextField.placeholder = "Введите статус"
            statusTextField.textColor = .black
            statusTextField.font = .systemFont(ofSize: 15, weight: .regular)
            statusTextField.borderStyle = .roundedRect
            statusTextField.translatesAutoresizingMaskIntoConstraints = false
            statusTextField.layer.borderWidth = 1
            statusTextField.layer.borderColor = UIColor.black.cgColor
            statusTextField.layer.cornerRadius = 12
            statusTextField.layer.backgroundColor = UIColor.white.cgColor
            return statusTextField
        }()
        
        private let stackView: UIStackView = {
            let stackView = UIStackView()
            stackView.axis = .vertical
            stackView.spacing = 10
            stackView.distribution = .fillEqually
            stackView.translatesAutoresizingMaskIntoConstraints = false
            return stackView
        }()
        
        private let setStatusButton: UIButton = {
            let setStatusButton = UIButton()
            setStatusButton.setTitle("Set status", for: .normal)
            setStatusButton.setTitleColor(.white, for: .normal)
            setStatusButton.layer.cornerRadius = 12
            setStatusButton.backgroundColor = .systemBlue
            setStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
            setStatusButton.layer.shadowRadius = 4
            setStatusButton.layer.shadowColor = UIColor.black.cgColor
            setStatusButton.layer.shadowOpacity = 0.7
            setStatusButton.translatesAutoresizingMaskIntoConstraints = false
            return setStatusButton
        }()
         
        // MARK: - Настройка объектов
        
        private func setupPHView() {
            [avatarImageView, stackView, setStatusButton].forEach { addSubview($0) }
            [fullNameLabel, statusLabel, statusTextField].forEach { stackView.addArrangedSubview($0) }
             
            setStatusButton.addTarget(self, action: #selector(tap), for: .touchUpInside)
            
            let constr: CGFloat = 16
            let photoConstr: CGFloat = 120

            NSLayoutConstraint.activate([
                avatarImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
                avatarImageView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: constr),
                avatarImageView.heightAnchor.constraint(equalToConstant: photoConstr),
                avatarImageView.widthAnchor.constraint(equalToConstant: photoConstr),
                
                stackView.topAnchor.constraint(equalTo: avatarImageView.topAnchor),
                stackView.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: constr),
                stackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -constr),
                stackView.bottomAnchor.constraint(equalTo: avatarImageView.bottomAnchor),
                
                setStatusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: constr),
                setStatusButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: constr),
                setStatusButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -constr),
                setStatusButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -constr),
                setStatusButton.heightAnchor.constraint(equalToConstant: 50)
            ])
        }
        
    //    MARK: - Настройка кнопки
        
        @objc private func tap() {
            statusLabel.text = statusTextField.text
            statusTextField.text = ""
            print("Статус установлен")
        }
        
    //    MARK: - Инициализатор
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupPHView()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
}
        /*
        /// установка статуса и сброс строки ввода статуса
        textStatus.text = statusText
        textfield.text = ""
        
        if textfield.text == "" {
            statusText = ""
            
        }

        /// проверка статуса пользователя
        if textStatus.text == "" {
            print("у пользователя \(titleName.text!) - пустой статус")
            
        } else {
            print("статус у пользователя \(titleName.text!) - \(textStatus.text!)")
            
        }
    }
}
*/
  
