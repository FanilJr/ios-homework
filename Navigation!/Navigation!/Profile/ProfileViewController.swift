//
//  ProfileViewController.swift
//  Navigation!
//
//  Created by Fanil_Jr on 20.05.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    var profil = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.frame = CGRect(x: 100, y: 100, width: view.safeAreaInsets.top, height: 0)

        
        //profil = ProfileHeaderView(frame: CGRect.zero)
        

        
        view.backgroundColor = .lightGray
        
       // profil.frame = CGRect(x: 16, y: 10, width: screenWidth - 32, height: 800)
       // profil.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        view.addSubview(profil)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("привет это баундс \(view.bounds)")
        print("привет это фрэйм \(view.frame)")
        NSLog("размер = \(self.view.bounds)")
        profil.frame = view.frame
        
        // MARK: доделать!!!!!!!!!!!!!!!!!!!!!
        //profil.zagolovok.widthAnchor.constraint(equalToConstant: 300)
        
        view.addSubview(profil.zagolovok)
        
    }
}
