//
//  BankFunctionalitiesCollectionViewCell.swift
//  Bank-app
//
//  Created by Maria Tupich on 20/12/23.
//

import UIKit

class BankFunctionalitiesCollectionViewCell: UICollectionViewCell {
    
    lazy var containerView: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.backgroundColor = UIColor(red: 45.0 / 255.0, green: 45.0 / 255.0, blue: 45.0 / 255.0, alpha: 1.0)
        container.layer.cornerRadius = 8
        container.layer.borderWidth = 1
        return container
    }()
    
    lazy var button: UIButton = {
       let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(named: "pix-icon"), for: .normal)
       return btn
    }()
    
    lazy var title: UILabel = {
       let title = UILabel()
       title.translatesAutoresizingMaskIntoConstraints = false
       title.textColor = .white
       title.font = .systemFont(ofSize: 10)
       return title
    }()
    
    override init(frame: CGRect) {
      super.init(frame: frame)
        buildViewHierarchy()
        setupConstraints()
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
    
    func buildViewHierarchy() {
        addSubview(containerView)
        addSubview(title)
        containerView.addSubview(button)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.leftAnchor.constraint(equalTo: leftAnchor),
            containerView.rightAnchor.constraint(equalTo: rightAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            button.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            
            title.topAnchor.constraint(equalTo: containerView.bottomAnchor),
            title.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
        ])
    }
    
}
