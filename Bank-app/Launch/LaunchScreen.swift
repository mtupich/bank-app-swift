//
//  LaunchScreen.swift
//  Bank-app
//
//  Created by Maria Tupich on 11/12/23.
//

import UIKit

class LaunchScreen: UIView {
    
    lazy var bg: UIImageView = {
       let bg = UIImageView()
        bg.image = UIImage(named: "bg")
        bg.translatesAutoresizingMaskIntoConstraints = false
        bg.backgroundColor = .yellow
       return bg
    }()
    
    lazy var icon: UIImageView = {
       let bg = UIImageView()
        bg.image = UIImage(named: "icon")
        bg.translatesAutoresizingMaskIntoConstraints = false
       return bg
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
        addSubview(bg)
        bg.addSubview(icon)
    }

    func setUpConstraints() {
        NSLayoutConstraint.activate([
            bg.topAnchor.constraint(equalTo: self.topAnchor),
            bg.leftAnchor.constraint(equalTo: self.leftAnchor),
            bg.rightAnchor.constraint(equalTo: self.rightAnchor),
            bg.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            icon.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            icon.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            icon.heightAnchor.constraint(equalToConstant: 60),
            icon.widthAnchor.constraint(equalToConstant: 60),
        ])
    }

}
