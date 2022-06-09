//
//  LoginViewController.swift
//  Navigation
//
//  Created by Fanil_Jr on 02.06.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    var stack = UIStackView()

    var scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.backgroundColor = .white
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
        
    }()

    
    var enterButon: UIButton = {
        
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 14
        button.layer.shadowOpacity = 0.7
        button.sizeToFit()
        button.setTitle("Log in", for: .normal)
        button.layer.shadowRadius = 4
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        return button
        
    }()
    
    var loginTextField: UITextField = {
        
        var textfields = UITextField()
        textfields.placeholder = "Enter text"
        textfields.tintColor = .lightGray
        textfields.textColor = .black
        textfields.sizeToFit()
        textfields.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textfields.leftViewMode = .always
        textfields.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        textfields.translatesAutoresizingMaskIntoConstraints = false
        return textfields
    }()
    
    var passwordTextField: UITextField = {
        
        let textfields = UITextField()
        textfields.placeholder = "Passwords"
        textfields.textColor = .black
        textfields.font = UIFont.systemFont(ofSize: 16)
        textfields.tintColor = .lightGray
        textfields.layer.borderWidth = 1
        textfields.clipsToBounds = true
        textfields.sizeToFit()
        textfields.autocapitalizationType = .none
        textfields.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textfields.leftViewMode = .always
        textfields.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        textfields.isSecureTextEntry = true
        textfields.translatesAutoresizingMaskIntoConstraints = false
        return textfields
        
    }()
    
    
    var logoVK: UIImageView = {
        
        let imageVK = UIImageView()
        imageVK.image = UIImage(named: "vk")
        imageVK.clipsToBounds = true
        imageVK.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        imageVK.sizeToFit()
        imageVK.translatesAutoresizingMaskIntoConstraints = false
        
        return imageVK
        
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        //view.addSubview(scrollView)
        
        add()
        constraints()
        
    }
    
    func add() {
        
       view.addSubview(logoVK)
        view.addSubview(enterButon)
       view.addSubview(stack)
        configureStackView()
        
    }
    
    func addTextfieldsToStackView() {
        
        stack.addArrangedSubview(loginTextField)
        stack.addArrangedSubview(passwordTextField)
    }
    
    func configureStackView() {
        
      //  scrollView.addSubview(stack)
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.clipsToBounds = true
        
        stack.layer.borderColor = CGColor(genericGrayGamma2_2Gray: 1, alpha: 10)
        stack.layer.cornerRadius = 10
        stack.sizeToFit()
        stack.backgroundColor = .systemGray6
        stack.layer.borderWidth = 1
        stack.layer.borderColor = CGColor(genericCMYKCyan: 10, magenta: 10, yellow: 10, black: 10, alpha: 10)
        addTextfieldsToStackView()
        setStackViewConstrains()
    }
    
    func setStackViewConstrains() {
        
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stack.topAnchor.constraint(equalTo: logoVK.bottomAnchor,constant: 120).isActive = true
        stack.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        stack.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        stack.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
    @objc private func buttonAction() {
        
        let profileViewController = ProfileViewController()
        self.navigationController?.pushViewController(profileViewController, animated: true)
        
    }
    
    func constraints() {
       // scrollView.translatesAutoresizingMaskIntoConstraints = false
       // scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
       // scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
       // scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
       // scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        logoVK.translatesAutoresizingMaskIntoConstraints = false
        enterButon.translatesAutoresizingMaskIntoConstraints = false
        
        logoVK.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        logoVK.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120).isActive = true
        logoVK.heightAnchor.constraint(equalToConstant: 100).isActive = true
        logoVK.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        enterButon.topAnchor.constraint(equalTo: stack.bottomAnchor, constant: 16).isActive = true
        enterButon.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16).isActive = true
        enterButon.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16).isActive = true
        enterButon.heightAnchor.constraint(equalToConstant: 50).isActive = true
      
        
        
        
    }
}
