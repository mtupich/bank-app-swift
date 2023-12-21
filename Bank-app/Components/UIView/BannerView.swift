//
//  BannerView.swift
//  Bank-app
//
//  Created by Maria Tupich on 20/12/23.
//

import UIKit

class BannerView: UIView {
    
    lazy var bannerContainer: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 45.0 / 255.0, green: 45.0 / 255.0, blue: 45.0 / 255.0, alpha: 1.0)
        view.layer.cornerRadius = 8
        return view
    }()
    
    lazy var titleLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Indique e ganhe"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.textColor = .white
        lbl.lineBreakMode = .byWordWrapping
        lbl.font = UIFont.boldSystemFont(ofSize: 30)
        return lbl
    }()
    
    lazy var subtitleLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Deixe todo mundo aproveitar as vantagens de um banco 100% digital."
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = .systemFont(ofSize: 10)
        lbl.textColor = .white
        lbl.numberOfLines = 0
        lbl.lineBreakMode = .byWordWrapping
        return lbl
    }()
    
    lazy var stack: UIStackView = {
       let stack = UIStackView()
       stack.axis = .vertical
       stack.translatesAutoresizingMaskIntoConstraints = false
       return stack
    }()
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "banknotes-icon")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
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
        addSubview(bannerContainer)
        bannerContainer.addSubview(stack)
        stack.addArrangedSubview(titleLbl)
        stack.addArrangedSubview(subtitleLbl)
        bannerContainer.addSubview(image)
    }

    func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            bannerContainer.topAnchor.constraint(equalTo: topAnchor),
            bannerContainer.leftAnchor.constraint(equalTo: leftAnchor),
            bannerContainer.rightAnchor.constraint(equalTo: rightAnchor),
            bannerContainer.heightAnchor.constraint(equalToConstant: 120),
            
            stack.centerYAnchor.constraint(equalTo: bannerContainer.centerYAnchor),
            stack.leftAnchor.constraint(equalTo: bannerContainer.leftAnchor, constant: 24),
            stack.rightAnchor.constraint(equalTo: image.leftAnchor, constant: -28),
            
            image.centerYAnchor.constraint(equalTo: bannerContainer.centerYAnchor),
            image.rightAnchor.constraint(equalTo: bannerContainer.rightAnchor, constant: -24),
            image.heightAnchor.constraint(equalToConstant: 100),
            image.widthAnchor.constraint(equalToConstant: 100),
        ])
    }

}

