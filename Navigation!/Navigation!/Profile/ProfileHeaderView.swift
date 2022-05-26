//
//  ProfileHeaderView.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    
 
    var photo: UIImageView!
    var zagolovok: UILabel!
    var text: UITextView!
    var knopka: UIButton!
    
   // let screenSize = UIScreen.main.bounds
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // PHOTO
        photo = UIImageView(frame: CGRect(x: 5, y: 100, width: 150, height: 150))
        photo.backgroundColor = .red
        photo.layer.cornerRadius = photo.frame.width / 2
        photo.translatesAutoresizingMaskIntoConstraints = false
        addSubview(photo)
        print("Это размер photo \(photo.frame)")
        
        // BUTTON
        knopka = UIButton()
        knopka.backgroundColor = .black
        knopka.setTitle("Najmi", for: .normal)
        knopka.setTitleColor(.red, for: .normal)
        knopka.titleLabel?.textColor = .white
        knopka.translatesAutoresizingMaskIntoConstraints = false
        print("это размер кнопки \(knopka.frame)")
        knopka.leftAnchor.constraint(equalTo: knopka.leftAnchor).isActive = true
        knopka.heightAnchor.constraint(equalToConstant: 300).isActive = true
       // knopka.rightAnchor.constraint(equalTo: photo.rightAnchor).isActive = true
        knopka.widthAnchor.constraint(equalToConstant: 300).isActive = true
        //knopka.heightAnchor.constraint(equalToConstant: 300)

        knopka.layer.cornerRadius = 14
        addSubview(knopka)
        
        // TEXT
        text = UITextView()
        
        text.text = "hell0"
        text.textColor = .black
        
        text.frame = CGRect(x: 150, y: 300, width: 50, height: 20)
        text.translatesAutoresizingMaskIntoConstraints = false
        text.layer.cornerRadius = 14
        addSubview(text)
        
        // ZAGOLOVOK
        
        zagolovok = UILabel()
        zagolovok.textColor = .black
        zagolovok.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        zagolovok.text = "Hipster"
        zagolovok.translatesAutoresizingMaskIntoConstraints = false
        
        
       // zagolovok.frame = CGRect(x: 200, y: 250, width: 200, height: 200)
        
        zagolovok.layer.cornerRadius = 14
        addSubview(zagolovok)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
 
}
