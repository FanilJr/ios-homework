//
//  LoginViewController.swift
//  Navigation
//
//  Created by Fanil_Jr on 02.06.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: Создаём элементы для вью

    let stack: UIStackView = {
        
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.layer.cornerRadius = 10
        stack.clipsToBounds = true
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.layer.borderColor = UIColor.lightGray.cgColor
        stack.layer.borderWidth = 0.5
        return stack
        
    }()

    private let contentView: UIView = {
        
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        return contentView
        
    }()

    let scrollView: UIScrollView = {
        
        let scrollView = UIScrollView()
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
        
    }()

    
    var button: UIButton = {
        
        let button = UIButton()
        button.setTitle("Log in", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.setBackgroundImage(UIImage(named: "blue_pixel"), for: .normal)
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        switch button.state {
        case .normal:
            button.alpha = 1
        case .selected:
            button.alpha = 0.8
        case .highlighted:
            button.alpha = 0.8
        case .disabled:
            button.alpha = 0.8
        default:
            button.alpha = 1
        }
        
        return button
        
    }()
    
    private lazy var loginTextfield: UITextField = {
        
        let logInTextfield = UITextField()
        logInTextfield.textColor = .black
        logInTextfield.backgroundColor = .systemGray6
        logInTextfield.autocapitalizationType = .none
        logInTextfield.placeholder = "Email or phone"
        logInTextfield.font = .systemFont(ofSize: 16, weight: .regular)
        logInTextfield.translatesAutoresizingMaskIntoConstraints = false
        logInTextfield.borderStyle = .roundedRect
        logInTextfield.layer.borderColor = UIColor.lightGray.cgColor
        logInTextfield.layer.borderWidth = 0.5
        logInTextfield.delegate = self
        return logInTextfield
        
    }()
    
   private lazy var passwordTextfield: UITextField = {
       
        let passTextfield = UITextField()
        passTextfield.textColor = .black
        passTextfield.backgroundColor = .systemGray6
        passTextfield.autocapitalizationType = .none
        passTextfield.placeholder = "Password"
        passTextfield.font = .systemFont(ofSize: 16, weight: .regular)
        passTextfield.isSecureTextEntry = true
        passTextfield.translatesAutoresizingMaskIntoConstraints = false
        passTextfield.borderStyle = .roundedRect
        passTextfield.layer.borderColor = UIColor.lightGray.cgColor
        passTextfield.layer.borderWidth = 0.5
        passTextfield.delegate = self
        return passTextfield
       
    }()
    
    let vkLogo: UIImageView = {
        
        let logoImage = UIImageView()
        logoImage.image = UIImage(named: "vk")
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        return logoImage
        
    }()
    
    override func viewDidLoad() {
        
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        addElementsAndConstraints()
        setupToHideKeyboardOnTapOnView()
        
    }
    
    @objc private func buttonAction() {
        
        let profile = ProfileViewController()
        navigationController?.pushViewController(profile, animated: true)
        
    }
    
    private func addElementsAndConstraints() {
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        /// добавляем лого, стэк и кнопку в контентView
        contentView.addSubview(vkLogo)
        contentView.addSubview(stack)
        contentView.addSubview(button)
        [vkLogo, stack, button].forEach { contentView.addSubview($0) }
        /// добавляем логин и пароль в стэк
        [loginTextfield, passwordTextfield].forEach { stack.addArrangedSubview($0) }
        
        /// выставляем констрейнты
        scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
            
        contentView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
            
        vkLogo.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        vkLogo.heightAnchor.constraint(equalToConstant: 100).isActive = true
        vkLogo.widthAnchor.constraint(equalToConstant: 100).isActive = true
        vkLogo.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 120).isActive = true
        
        stack.topAnchor.constraint(equalTo: vkLogo.bottomAnchor, constant: 120).isActive = true
        stack.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        stack.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        stack.heightAnchor.constraint(equalToConstant: 100).isActive = true
       
        button.topAnchor.constraint(equalTo: stack.bottomAnchor, constant: 16).isActive = true
        button.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        button.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
    }
    
    private let notificationCenter = NotificationCenter.default

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        notificationCenter.addObserver(self, selector: #selector(keyboardShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        notificationCenter.addObserver(self, selector: #selector(keyboardHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    @objc private func keyboardShow(notification: NSNotification) {
        
        if let keyboard = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            scrollView.contentInset.bottom = keyboard.height
            scrollView.verticalScrollIndicatorInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboard.height, right: 0)
        }
        
    }
    
    @objc private func keyboardHide() {
        
        scrollView.contentInset = .zero
        scrollView.verticalScrollIndicatorInsets = .zero
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        notificationCenter.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        notificationCenter.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
}

//  MARK: - Расширение для клавиатуры - закрытие на нажатие return
extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        view.endEditing(true)
        return true
        
    }
}

//  MARK: - Расширение для клавиатуры - закрытие на нажатие на любое место экрана
extension UIViewController {
    
    func setupToHideKeyboardOnTapOnView() {
        
        let recognizer: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        recognizer.cancelsTouchesInView = false
        
        view.addGestureRecognizer(recognizer)
        
    }

    @objc func dismissKeyboard() {
        
        view.endEditing(true)
        
    }
}

