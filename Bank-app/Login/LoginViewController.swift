//
//  ViewController.swift
//  Bank-app
//
//  Created by Maria Tupich on 11/12/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginScreenView: LoginScreen?
    
    override func loadView() {
        self.loginScreenView = LoginScreen()
        self.view = loginScreenView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreenView?.delegate = self
    }
}

extension LoginViewController: LoginScreenProtocol {
    func didTapEnter() {
        let navigation = UINavigationController(rootViewController: HomeViewController())
        navigation.modalPresentationStyle = .overFullScreen
        self.present(navigation, animated: true)
    }
    
    
}


