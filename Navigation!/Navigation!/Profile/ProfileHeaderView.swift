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
        
        let rect = CGRect(x: 10, y: 300, width: 100, height: 100)
        let myView = UIView(frame: rect)
        myView.backgroundColor = .red
        
        addSubview(myView)
        
        // PHOTO
        photo = UIImageView(frame: CGRect(x: 10, y: 120, width: 150, height: 150))
        photo.backgroundColor = .red
        photo.layer.cornerRadius = photo.frame.width / 2
        photo.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(photo)
        
        // BUTTON
        knopka = UIButton()
        knopka.backgroundColor = .black
        knopka.setTitle("Najmi", for: .normal)
        knopka.setTitleColor(.red, for: .normal)
        knopka.titleLabel?.textColor = .white
        
        knopka.frame = CGRect(x: 170, y: 250, width: 150, height: 30)
        knopka.layer.cornerRadius = 14
        addSubview(knopka)
        
        // TEXT
        text = UITextView()
        
        text.text = "hell0"
        text.textColor = .black
        text.frame = CGRect(x: 150, y: 300, width: 50, height: 20)
        text.layer.cornerRadius = 14
        
        
        addSubview(text)
        
        // ZAGOLOVOK
        
        zagolovok = UILabel()
        zagolovok.textColor = .black
        zagolovok.frame = CGRect(x: 163, y: 100, width: 90, height: 40)
        zagolovok.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        zagolovok.text = "Hipster"
        addSubview(zagolovok)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
 
}
