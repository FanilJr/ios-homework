//
//  PostViewController.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    var titlePost: String = "Пост"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemCyan
        
        let myButton = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(tapButton))
        navigationItem.title = titlePost
        navigationItem.rightBarButtonItem = myButton

    }
    
    @objc func tapButton() {
        let infoViewController = InfoViewController()
        
        present(infoViewController, animated: true, completion: nil)
        //navigationController?.pushViewController(infoViewController, animated: true)
    }
}
    

