//
//  ProfileViewController.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
   private lazy var tableView: UITableView = {
        
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "PostTableViewCell")
       tableView.register(PhotosTableViewCell.self, forCellReuseIdentifier: "PhotosTableViewCell")
       tableView.backgroundColor = .systemGray6
        return tableView
       
    }()
    
    /// Создаём свойство, которое принимает функцию массива
    private let post = PostStruct.massivePost()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        
    }
    
    func setupTableView() {
        
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            
        tableView.topAnchor.constraint(equalTo: view.topAnchor),
        tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
        tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        
        ])
    }
}

//    MARK: - Расширение UITableViewDataSource
extension ProfileViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
//    В зависимости от секции возвращает необхобимое количество ячеек
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 1 : post.count
    }
    
//    В зависимости от секции возвращает необходимый тип ячейки
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "PhotosTableViewCell", for: indexPath) as! PhotosTableViewCell
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "PostTableViewCell", for: indexPath) as! PostTableViewCell
        cell2.setupCell(post[indexPath.row])
        return indexPath.section == 0 ? cell1 : cell2
    }
}


//    MARK: - Расширение UITableViewDelegate
extension ProfileViewController: UITableViewDelegate {
    
//    Возвращаем динамическую высоту ячейки
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
//    Возвращаем хедер - наш HeaderView
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let PHView = ProfileHeaderView()
        return section == 0 ? PHView : nil
    }
    
//    Возвращаем необходимую высоту хедера
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? UITableView.automaticDimension : 0
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let galleryVC = PhotosViewController()
        //galleryVC.title = "Photo Gallery"
        
        
        indexPath.section == 0 ? navigationController?.pushViewController(galleryVC, animated: true) : nil
    }
}
