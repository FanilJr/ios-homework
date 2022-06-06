//
//  ProfileHeaderView.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private var statusText: String = ""
    
    // MARK: строка ввода статуса
    var textfield: UITextField = {
        
        var textfields = UITextField()
        textfields.placeholder = "Enter text"
        textfields.backgroundColor = .white
        textfields.layer.cornerRadius = 12
        textfields.layer.borderWidth = 1
        textfields.layer.borderColor = CGColor(genericCMYKCyan: 10, magenta: 10, yellow: 10, black: 10, alpha: 10)
        textfields.textColor = .black
        textfields.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textfields.leftViewMode = .always
        textfields.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        textfields.translatesAutoresizingMaskIntoConstraints = false
        textfields.addTarget(self, action: #selector(textChanged), for: .editingChanged)
        return textfields
        
    }()
  
    // MARK: Фотография
    var myPhoto: UIImageView = {
        
        let fotka = UIImageView()
        fotka.clipsToBounds = true
        fotka.frame = CGRect(x: 16, y: 16, width: 100, height: 100)
        fotka.image = UIImage(named: "1")
        fotka.layer.cornerRadius = fotka.frame.width / 2
        fotka.layer.borderWidth = 3
        fotka.layer.borderColor = CGColor(gray: 5, alpha: 5)
        fotka.translatesAutoresizingMaskIntoConstraints = false
        return fotka
        
    }()
        
    // MARK: Имя профиля
    var titleName: UILabel = {
        
        let name = UILabel()
        name.text = "Fanil_JR"
        name.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        name.tintColor = .black
        name.textColor = .black
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
        
    }()
    
    // MARK: Статус
    var textStatus: UILabel = {
        
        let opisanie = UILabel()
        opisanie.text = "Waiting for something..."
        opisanie.textColor = .gray
        opisanie.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        opisanie.translatesAutoresizingMaskIntoConstraints = false
        return opisanie
        
    }()
    
    // MARK: Кнопка Set status
    var myButton: UIButton = {
        
        var button = UIButton()
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 14
        button.layer.shadowOpacity = 0.7
        button.setTitle("Set status", for: .normal)
        button.layer.shadowRadius = 4
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonPresset), for: .touchUpInside)
        return button
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemGray6
        addElementAndAnchors()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    // MARK: Добавляем элементы на view и настраиваем констрейнты
    func addElementAndAnchors() {
        
        addSubview(myPhoto)
        addSubview(myButton)
        addSubview(titleName)
        addSubview(textStatus)
        addSubview(textfield)
        
        myPhoto.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        myPhoto.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        myPhoto.widthAnchor.constraint(equalToConstant: 110).isActive = true
        myPhoto.heightAnchor.constraint(equalToConstant: 110).isActive = true
        
        myButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        myButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        myButton.topAnchor.constraint(equalTo: myPhoto.bottomAnchor, constant: 16).isActive = true
        myButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        titleName.leftAnchor.constraint(equalTo: myPhoto.rightAnchor, constant: 27).isActive = true
        titleName.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        titleName.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        textStatus.leftAnchor.constraint(equalTo: myPhoto.rightAnchor, constant: 15).isActive = true
        textStatus.topAnchor.constraint(equalTo: titleName.bottomAnchor, constant: 10).isActive = true
        
        textfield.leftAnchor.constraint(equalTo: myPhoto.rightAnchor, constant: 15).isActive = true
        textfield.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant:  -16).isActive = true
        textfield.heightAnchor.constraint(equalToConstant: 40).isActive = true
        textfield.topAnchor.constraint(equalTo: titleName.bottomAnchor,constant: 30).isActive = true
        
    }
    
    // MARK: Метод измненения статуса
    @objc func textChanged(_ textField: UITextField) {
        
        statusText = textfield.text ?? "Empty"
        
    }
    
    // MARK: Нажатие кнопки с анимацией и сброс строки ввода статуса на placeholder "Enter text"
    @objc func buttonPresset() {
        
        let bounds = myButton.bounds
        let bonds = textStatus.bounds
        
        /// анимация:
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveLinear) {
            self.myButton.bounds = CGRect(x: bounds.origin.x - 30, y: bounds.origin.y, width: bounds.width + 30, height: bounds.height + 10)
            self.myButton.titleLabel?.bounds = CGRect(x: bounds.origin.x, y: bounds.origin.y, width: bounds.width + 100, height: bounds.height)
            self.textStatus.bounds = CGRect(x: bonds.origin.x, y: bonds.origin.y, width: bonds.width + 50, height: bonds.height)
            
        }
        
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

  
