//
//  LoginScreen.swift
//  Bank-app
//
//  Created by Maria Tupich on 11/12/23.
//

import Foundation
import UIKit

class LoginScreen: UIView {
    
    weak var delegate: LoginScreenProtocol?
    
    lazy var bg: UIImageView = {
       let bg = UIImageView()
        bg.image = UIImage(named: "bg")
        bg.translatesAutoresizingMaskIntoConstraints = false
       return bg
    }()
    
    lazy var loginContainer: UIView = {
       let container = UIView()
       container.translatesAutoresizingMaskIntoConstraints = false
       container.backgroundColor = .clear
       container.layer.cornerRadius = 8
       container.layer.borderColor = UIColor.white.cgColor
       container.layer.borderWidth = 1
       return container
    }()
    
    lazy var title: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "FAÇA SEU LOGIN"
        title.font = .systemFont(ofSize: 16, weight: .bold)
        title.textColor = .white
        return title
    }()
 
    lazy var credentialView: TextfieldBorderBottomView = {
       let tf = TextfieldBorderBottomView()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.title.text = "CPF"
        tf.placeholder.placeholder = "CPF"
       return tf
    }()
    
    lazy var passwordView: TextfieldBorderBottomView = {
       let tf = TextfieldBorderBottomView()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.title.text = "SENHA"
        tf.placeholder.placeholder = "SENHA"
       return tf
    }()
    
    lazy var loginBtn: UIButton = {
       let btn = UIButton()
       btn.translatesAutoresizingMaskIntoConstraints = false
       btn.setTitle("Entrar", for: .normal)
       btn.layer.cornerRadius = 8
       btn.layer.borderColor = UIColor.white.cgColor
       btn.layer.borderWidth = 1
       btn.addTarget(self, action: #selector(self.didTapEnter), for: .touchUpInside)
       return btn
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setUpConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didTapEnter() {
        print("passei aqui 2")
        delegate?.didTapEnter()
    }

    func addSubviews() {
        addSubview(bg)
        addSubview(loginContainer)
        addSubview(title)
        addSubview(credentialView)
        addSubview(passwordView)
        addSubview(loginBtn)
    }

    func setUpConstraints() {
        NSLayoutConstraint.activate([
            bg.topAnchor.constraint(equalTo: topAnchor),
            bg.leftAnchor.constraint(equalTo: leftAnchor),
            bg.rightAnchor.constraint(equalTo: rightAnchor),
            bg.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            loginContainer.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loginContainer.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            loginContainer.widthAnchor.constraint(equalToConstant: 280),
            loginContainer.heightAnchor.constraint(equalToConstant: 260),
            
            title.topAnchor.constraint(equalTo: loginContainer.topAnchor, constant: 10),
            title.centerXAnchor.constraint(equalTo: loginContainer.centerXAnchor),
            
            credentialView.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 20),
            credentialView.leftAnchor.constraint(equalTo: loginContainer.leftAnchor, constant: 24),
            credentialView.rightAnchor.constraint(equalTo: loginContainer.rightAnchor, constant: -24),
                
            passwordView.topAnchor.constraint(equalTo: credentialView.bottomAnchor, constant: 50),
            passwordView.leftAnchor.constraint(equalTo: loginContainer.leftAnchor, constant: 24),
            passwordView.rightAnchor.constraint(equalTo: loginContainer.rightAnchor, constant: -24),

            loginBtn.leftAnchor.constraint(equalTo: loginContainer.leftAnchor, constant: 24),
            loginBtn.rightAnchor.constraint(equalTo: loginContainer.rightAnchor, constant: -24),
            loginBtn.bottomAnchor.constraint(equalTo: loginContainer.bottomAnchor, constant: -24),
        ])
    }

}
