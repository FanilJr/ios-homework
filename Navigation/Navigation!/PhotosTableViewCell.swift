//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Fanil_Jr on 10.06.2022.
//

import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    //    MARK: - Инициализатор
        
        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            layout()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
            
    //    MARK: - Создание и настройка объектов
        
        private let label: UILabel = {
            let label = UILabel()
            label.text = "Photos"
            label.textColor = .black
            label.font = .systemFont(ofSize: 24, weight: .bold)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        private let button: UIButton = {
            let button = UIButton()
            button.setImage(UIImage(systemName: "arrow.right"), for: .normal)
            button.tintColor = .black
            button.translatesAutoresizingMaskIntoConstraints = false
           // button.addTarget(self, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
            return button
        }()
        
    //    MARK: - Коллекция
        
        private lazy var collectionView: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
            collectionView.dataSource = self
            collectionView.delegate = self
            collectionView.translatesAutoresizingMaskIntoConstraints = false
            collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "CustomCollectionViewCell")
            return collectionView
        }()
        
        //    MARK: - Расстановка объектов в ячейке
        private func layout() {
            
            [label, button, collectionView].forEach { contentView.addSubview($0) }
                            
            NSLayoutConstraint.activate([
                
                label.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12),
                label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
                
                button.centerYAnchor.constraint(equalTo: label.centerYAnchor),
                button.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
                
                collectionView.topAnchor.constraint(equalTo: label.bottomAnchor),
                collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
                collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
                collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
                collectionView.heightAnchor.constraint(equalToConstant: 100)
            ])
        }
    }

    //  MARK: - Расширение UICollectionViewDataSource
    extension PhotosTableViewCell: UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return galery.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as! CustomCollectionViewCell
            cell.pullCell(photo: galery[indexPath.row])
            return cell
        }
    }

    //  MARK: - Расширение UICollectionViewDelegateFlowLayout
    extension PhotosTableViewCell: UICollectionViewDelegateFlowLayout {
        
    //    Ставлю 10 потому что при 8pt крайняя правая ячейка уплывает за границы коллекции, приходится прокручивать, чтоб увидеть её всю. При 10pt все отображается нормально
        
        private var interSpace: CGFloat { return 10 }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let width = (collectionView.bounds.width - interSpace * 3) / 4
            return CGSize(width: width, height: width)
        }
    }
