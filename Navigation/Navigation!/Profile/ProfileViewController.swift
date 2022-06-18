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

extension ProfileViewController: UITableViewDelegate {
    
    /// значение по умолчанию для высоты ячеек
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        UITableView.automaticDimension
        
    }
    
    /// Отображаем наш HeaderView
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = ProfileHeaderView()
        headerView.backgroundColor = .systemGray5
        return headerView
        
    }
    
    /// Задаём высоту нашего HeaderView
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
       return 210;
        
    }
}

extension ProfileViewController: UITableViewDataSource {
    
    /// Количество ячеек равное количеству данных в массиве
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return post.count

    }
    
    /// Переиспользуем ячейку PostTableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostTableViewCell", for: indexPath) as! PostTableViewCell
        cell.setupCell(post[indexPath.row])
        cell.backgroundColor = .systemGray5
        return cell
        
    }
}
    
