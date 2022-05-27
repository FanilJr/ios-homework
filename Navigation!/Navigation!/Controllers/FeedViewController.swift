//
//  FeedViewController.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    
    var post = Post(title: "Мой пост")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        
        let postButton = UIButton()
        postButton.translatesAutoresizingMaskIntoConstraints = false
        postButton.backgroundColor = .systemBlue
        postButton.layer.cornerRadius = 14
        postButton.layer.shadowOpacity = 0.3
        postButton.layer.shadowOffset = CGSize(width: 5, height: 8)
        postButton.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        postButton.setTitle("Перейти на пост", for: .normal)
        postButton.setTitleColor(.black, for: .normal)
        postButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        view.addSubview(postButton)
        
        NSLayoutConstraint.activate([postButton.widthAnchor.constraint(equalToConstant: 300), postButton.heightAnchor.constraint(equalToConstant: 300),
        postButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
        postButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)])
    
    }
   
    @objc private func buttonAction() {
        let postViewController = PostViewController()
        postViewController.titlePost = post.title
        
        self.navigationController?.pushViewController(postViewController, animated: true)
        
    }
}
