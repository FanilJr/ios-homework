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
    
    let screenSize = UIScreen.main.bounds
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        photo = UIImageView(frame: CGRect(x: 16, y: 16, width: 150, height: 150))
        photo.backgroundColor = .red
        photo.layer.cornerRadius = photo.frame.width / 2
        photo.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(photo)
        
        zagolovok = UILabel(frame: CGRect(x: 32, y: 27, width: 100, height: 100))
        zagolovok.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        zagolovok.textColor = .black
        zagolovok.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(zagolovok)
        
        knopka = UIButton(frame: CGRect(x: 600, y: 600, width: 30, height: 30))
        knopka.backgroundColor = .blue
        knopka.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(knopka)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
 
}
