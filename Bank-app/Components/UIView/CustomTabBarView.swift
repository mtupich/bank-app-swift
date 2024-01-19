//
//  CustomTabBarView.swift
//  Bank-app
//
//  Created by Maria Tupich on 02/01/24.
//

import UIKit

class CustomTabBarView: UIView {
    
    lazy var stack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.distribution = .fillEqually
        stack.layer.cornerRadius = 23
        stack.clipsToBounds = true
        stack.spacing = 10
        return stack
    }()
    
    lazy var button: UIButton = {
        let btn = UIButton()
        
        if let image = UIImage(named: "tabBar1-icon") {
            let whiteImage = image.withTintColor(.white)
            btn.setImage(whiteImage, for: .normal)
        }
        
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    lazy var button2: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "tabBar2-icon"), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    lazy var button3: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "tabBar3-icon"), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    lazy var button4: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "tabBar4-icon"), for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
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
      addSubview(stack)
      stack.addArrangedSubview(button)
      stack.addArrangedSubview(button2)
      stack.addArrangedSubview(button3)
      stack.addArrangedSubview(button4)
    }

    func setUpConstraints() {
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: topAnchor),
            stack.leadingAnchor.constraint(equalTo: leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: trailingAnchor),
            stack.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }

}
