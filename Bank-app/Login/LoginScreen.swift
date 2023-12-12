//
//  LoginScreen.swift
//  Bank-app
//
//  Created by Maria Tupich on 11/12/23.
//

import Foundation
import UIKit

import UIKit

class LoginScreen: UIView {

    lazy var bg: UIImageView = {
       let bg = UIImageView()
        bg.image = UIImage(named: "bg")
        bg.translatesAutoresizingMaskIntoConstraints = false
       return bg
    }()
    
    lazy var loginContainer: UIView = {
       let container = UIView()
       container.translatesAutoresizingMaskIntoConstraints = false
       container.backgroundColor = .white
       return container
    }()
    
    lazy var title: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = "Faça seu login"
        return title
    }()
    
    lazy var loginStackView: UIStackView = {
      let stack = UIStackView()
      stack.translatesAutoresizingMaskIntoConstraints = false
      stack.axis = .vertical
      stack.alignment = .fill
      stack.distribution = .fillEqually
      stack.backgroundColor = .red
      return stack
    }()
    
    lazy var loginBtn: UIButton = {
       let btn = UIButton()
       btn.translatesAutoresizingMaskIntoConstraints = false
       btn.backgroundColor = .blue
       btn.setTitle("Entrar", for: .normal)
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

    func addSubviews() {
        self.addSubview(self.bg)
        bg.addSubview(loginContainer)
        loginContainer.addSubview(title)
        loginContainer.addSubview(loginStackView)
        loginContainer.addSubview(loginBtn)
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
            loginContainer.heightAnchor.constraint(equalToConstant: 300),
            
            title.topAnchor.constraint(equalTo: loginContainer.topAnchor, constant: 10),
            title.centerXAnchor.constraint(equalTo: loginContainer.centerXAnchor),
            title.bottomAnchor.constraint(equalTo: loginStackView.topAnchor),
            
            loginStackView.topAnchor.constraint(equalTo: title.bottomAnchor),
            loginStackView.leftAnchor.constraint(equalTo: loginContainer.leftAnchor, constant: 24),
            loginStackView.rightAnchor.constraint(equalTo: loginContainer.rightAnchor, constant: -24),
            loginStackView.heightAnchor.constraint(equalToConstant: 140),

            loginBtn.topAnchor.constraint(equalTo: loginStackView.bottomAnchor, constant: 20),
            loginBtn.centerXAnchor.constraint(equalTo: loginContainer.centerXAnchor),
            loginBtn.leftAnchor.constraint(equalTo: loginContainer.leftAnchor, constant: 24),
            loginBtn.rightAnchor.constraint(equalTo: loginContainer.rightAnchor, constant: -24),


        ])
    }

}
