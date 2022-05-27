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
    var text: UILabel!
    var knopka: UIButton!
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        photo = UIImageView(frame: CGRect(x: 16, y: 16, width: 120, height: 120))
        photo.backgroundColor = .black
        //photo.image = UIImage(named: "1")
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
        
        addSubview(knopka)
        
        text = UILabel()//frame: CGRect(x: 100, y: 100, width: 300, height: 100))
        text.text = "Waiting for something..."
        text.textColor = .gray
        text.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        text.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(text)
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
 
}
