//
//  UserHeaderView.swift
//  Bank-app
//
//  Created by Maria Tupich on 20/12/23.
//

import UIKit

class UserHeaderView: UIView {
    
    lazy var searchBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: "magnifier-icon"), for: .normal)
        return btn
    }()
    
    lazy var greetingsLbl: UILabel = {
        let greetings = UILabel()
        greetings.translatesAutoresizingMaskIntoConstraints = false
        greetings.text = "Bem-vindo de volta"
        greetings.textColor = .white
        return greetings
    }()
    
    lazy var notificationsBtn: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: "alert-icon"), for: .normal)
        return btn
    }()
    
    lazy var userStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillProportionally
        return stack
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
        addSubview(userStackView)
        userStackView.addArrangedSubview(searchBtn)
        userStackView.addArrangedSubview(greetingsLbl)
        userStackView.addArrangedSubview(notificationsBtn)
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            userStackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            userStackView.leftAnchor.constraint(equalTo: leftAnchor),
            userStackView.rightAnchor.constraint(equalTo: rightAnchor),
        ])
    }
}
