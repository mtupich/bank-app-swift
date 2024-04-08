//
//  ViewController.swift
//  Bank-app
//
//  Created by Maria Tupich on 11/12/23.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    var loginScreenView: LoginScreen?
    
    override func loadView() {
        self.loginScreenView = LoginScreen()
        self.view = loginScreenView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreenView?.delegate = self
        loginScreenView?.credentialView.placeholder.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
         // Esconde o teclado quando o botão return é pressionado
         textField.resignFirstResponder()
         return true
     }
}

extension LoginViewController: LoginScreenProtocol {
    func didTapEnter() {
        let navigation = UINavigationController(rootViewController: HomeViewController())
        navigation.modalPresentationStyle = .overFullScreen
        self.present(navigation, animated: true)
    }
    
    
}


