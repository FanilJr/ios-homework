//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Fanil_Jr on 10.06.2022.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    private let photos = Photos.massivePhoto()
        
        var stackView: UIStackView = {
            
            let stack = UIStackView()
            stack.axis = .horizontal
            stack.distribution = .fillEqually
            stack.spacing = 10
            stack.backgroundColor = .green
            stack.translatesAutoresizingMaskIntoConstraints = false
            return stack
            
        }()
        
        let viewPhoto: UIView = {
            
            let view = UIView()
            view.backgroundColor = .red
            view.translatesAutoresizingMaskIntoConstraints = false
            return view
            
        }()
    
    private var label: UILabel = {
        
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
    
  private lazy var photo1: UIImageView = {
        
        let photo = UIImageView()
        photo.image = UIImage(named: photos[0].image)
        photo.backgroundColor = .yellow
        photo.layer.cornerRadius = 10
        photo.clipsToBounds = true
        return photo
        
    }()
    
    private lazy var photo2: UIImageView = {
          
          let photo = UIImageView()
          photo.image = UIImage(named: photos[1].image)
          photo.backgroundColor = .yellow
          photo.layer.cornerRadius = 10
          photo.clipsToBounds = true
          return photo
          
      }()
    
    private lazy var photo3: UIImageView = {
          
          let photo = UIImageView()
          photo.image = UIImage(named: photos[2].image)
          photo.backgroundColor = .yellow
          photo.layer.cornerRadius = 10
          photo.clipsToBounds = true
          return photo
          
      }()
    
    private lazy var photo4: UIImageView = {
          
          let photo = UIImageView()
          photo.image = UIImage(named: photos[3].image)
          photo.backgroundColor = .yellow
          photo.layer.cornerRadius = 10
          photo.clipsToBounds = true
          return photo
          
      }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier identifer: String?) {
        super.init(style: style, reuseIdentifier: identifer)
        
        constrPhotosTable()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func constrPhotosTable() {
        [photo1, photo2, photo3, photo4].forEach { stackView.addArrangedSubview($0) }
        [viewPhoto, label, button, stackView].forEach { contentView.addSubview($0)}
        
        NSLayoutConstraint.activate([
            
            viewPhoto.topAnchor.constraint(equalTo: contentView.topAnchor),
            viewPhoto.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            viewPhoto.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            viewPhoto.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            label.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12),
            label.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 12),
            label.heightAnchor.constraint(equalToConstant: 30),
            
            button.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
            button.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12),
            button.heightAnchor.constraint(equalToConstant: 30),
            button.widthAnchor.constraint(equalToConstant: 30),
            
            stackView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 12),
            stackView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12),
            stackView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12)
            ])
            
    }
    
    

}
