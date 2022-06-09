//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Fanil_Jr on 10.06.2022.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    private let label: UILabel = {
        
        var stackView: UIStackView = {
            
            let stack = UIStackView()
            stack.axis = .horizontal
            stack.distribution = .fillEqually
            stack.spacing = 10
            stack.backgroundColor = .green
            stack.translatesAutoresizingMaskIntoConstraints = false
            return stack
        }()
        
        let nameLabel = UILabel()
        nameLabel.text = "Photos"
        nameLabel.tintColor = .black
        nameLabel.font = .systemFont(ofSize: 24, weight: .bold)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameLabel
        
    }()
    
    private let button: UIButton = {
        
        let button = UIButton()
        button.setImage(UIImage(systemName: "arrow.right"), for: .normal)
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    

}
