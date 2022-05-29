//
//  ProfileHeaderView.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    var textfield: TextField = {
        var textfields = TextField()
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
    
    var photo: UIImageView = {
        let fotka = UIImageView()
        fotka.clipsToBounds = true
        fotka.frame = CGRect(x: 16, y: 16, width: 120, height: 120)
        fotka.image = UIImage(named: "1")
        fotka.layer.cornerRadius = fotka.frame.width / 2
        fotka.layer.borderWidth = 3
        fotka.layer.borderColor = CGColor(gray: 5, alpha: 5)
        fotka.translatesAutoresizingMaskIntoConstraints = false
        return fotka
    }()
        
    
    var zagolovok: UILabel = {
        let name = UILabel()
        name.text = "Fanil_JR"
        name.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        name.tintColor = .black
        name.textColor = .black
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    var text: UILabel = {
        let opisanie = UILabel()
        opisanie.text = "Waiting for something..."
        opisanie.textColor = .gray
        opisanie.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        opisanie.translatesAutoresizingMaskIntoConstraints = false
        return opisanie
    }()
    
    var knopka: UIButton = {
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
    
    private var statusText: String = ""
    
    func addElements() {
        
        addSubview(photo)
        addSubview(knopka)
        addSubview(zagolovok)
        addSubview(text)
        addSubview(textfield)
    }
    
    func anchors() {
        
        photo.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        photo.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        photo.widthAnchor.constraint(equalToConstant: 120).isActive = true
        photo.heightAnchor.constraint(equalToConstant: 120).isActive = true
        
        knopka.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        knopka.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        knopka.topAnchor.constraint(equalTo: textfield.bottomAnchor, constant: 16).isActive = true
        knopka.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        zagolovok.leftAnchor.constraint(equalTo: photo.rightAnchor, constant: 15).isActive = true
        zagolovok.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27).isActive = true
        zagolovok.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        text.leftAnchor.constraint(equalTo: photo.rightAnchor, constant: 15).isActive = true
        text.topAnchor.constraint(equalTo: zagolovok.bottomAnchor, constant: 16).isActive = true
        
        textfield.leftAnchor.constraint(equalTo: photo.rightAnchor, constant: 15).isActive = true
        textfield.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant:  -16).isActive = true
      textfield.heightAnchor.constraint(equalToConstant: 40).isActive = true
       textfield.topAnchor.constraint(equalTo: photo.bottomAnchor,constant: -16).isActive = true
        
    }
    @objc func textChanged(_ textField: UITextField) {
        
            statusText = textfield.text!
        
    }
    @objc func buttonPresset() {
        
        let bounds = knopka.bounds
        let bonds = text.bounds
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 2, initialSpringVelocity: 1, options: .curveLinear) {
            self.knopka.bounds = CGRect(x: bounds.origin.x - 30, y: bounds.origin.y, width: bounds.width + 30, height: bounds.height + 10)
            self.knopka.titleLabel?.bounds = CGRect(x: bounds.origin.x, y: bounds.origin.y, width: bounds.width + 100, height: bounds.height)
            self.text.bounds = CGRect(x: bonds.origin.x, y: bonds.origin.y, width: bonds.width + 50, height: bonds.height)
        }
            
        text.text = statusText
        textfield.text = ""
        if textfield.text == "" {
            statusText = ""
            
        }
        
        if text.text == "" {
            print("у пользователя \(zagolovok.text!) - пустой статус")
        } else {
        print("статус у пользователя \(zagolovok.text!) - \(text.text!)")
            
        }
    }
}

  
