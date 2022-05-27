//
//  ProfileHeaderView.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    var textfield = TextField()
    
    var photo: UIImageView!
    var zagolovok: UILabel!
    var text: UILabel!
    var knopka: UIButton!
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        photo = UIImageView(frame: CGRect(x: 16, y: 16, width: 120, height: 120))
        photo.backgroundColor = .black
        photo.clipsToBounds = true
        photo.image = UIImage(named: "1")
        photo.layer.cornerRadius = photo.frame.width / 2
        photo.layer.borderWidth = 3
        photo.layer.borderColor = CGColor(gray: 5, alpha: 5)
        photo.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(photo)
        
        zagolovok = UILabel()
        zagolovok.text = "Fanil_JR"
        zagolovok.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        zagolovok.tintColor = .black
        zagolovok.textColor = .black
        zagolovok.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(zagolovok)
        
        knopka = UIButton()
        knopka.backgroundColor = .systemBlue
        knopka.layer.cornerRadius = 14
        knopka.layer.shadowOpacity = 0.7
        knopka.setTitle("Show status", for: .normal)
        knopka.layer.shadowRadius = 4
        knopka.layer.shadowOffset = CGSize(width: 4, height: 4)
        knopka.translatesAutoresizingMaskIntoConstraints = false
        knopka.addTarget(self, action: #selector(buttonPresset), for: .touchUpInside)
        
        addSubview(knopka)
        
        text = UILabel()
        text.text = "Waiting for something..."
        text.textColor = .gray
        text.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        text.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(text)
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    @objc func buttonPresset() {
        let bounds = knopka.bounds
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: .curveEaseInOut) {
            self.knopka.bounds = CGRect(x: bounds.origin.x - 50, y: bounds.origin.y, width: bounds.width + 50, height: bounds.height)
            self.knopka.titleLabel?.bounds = CGRect(x: bounds.origin.x - 30, y: bounds.height / 2, width: bounds.width + 60, height: 0)
        }
        print(" статус у пользователя \(zagolovok.text!) - \(text.text!)")
        
    }
    
 
}
