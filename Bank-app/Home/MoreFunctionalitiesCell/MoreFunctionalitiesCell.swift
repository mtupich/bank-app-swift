//
//  MoreFunctionalitiesCell.swift
//  Bank-app
//
//  Created by Maria Tupich on 28/12/23.
//

import UIKit

class MoreFunctionalitiesCell: UICollectionViewCell {
    
    lazy var containerView: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.backgroundColor = .white
        container.layer.cornerRadius = 8
        container.layer.borderWidth = 1
        return container
    }()
    
    lazy var button: UIButton = {
       let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(didTapMoreFunctionalities), for: .touchUpInside)
       return btn
    }()
    
    lazy var title: UILabel = {
       let title = UILabel()
       title.translatesAutoresizingMaskIntoConstraints = false
       title.textColor = .black
       title.font = UIFont.boldSystemFont(ofSize: 14)
       title.numberOfLines = 0
       title.lineBreakMode = .byWordWrapping
       return title
    }()
    
    lazy var subtitle: UILabel = {
       let title = UILabel()
       title.translatesAutoresizingMaskIntoConstraints = false
       title.textColor = .black
       title.font = .systemFont(ofSize: 8)
       title.numberOfLines = 0
       title.lineBreakMode = .byWordWrapping
       return title
    }()
    
    lazy var drawImage: UIImageView = {
       let img = UIImageView()
       img.translatesAutoresizingMaskIntoConstraints = false
       return img
    }()
    
    lazy var stack: UIStackView = {
       let stack = UIStackView()
       stack.axis = .vertical
       stack.alignment = .leading
       stack.distribution = .fillProportionally
       stack.translatesAutoresizingMaskIntoConstraints = false
       return stack
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
    
    @objc func didTapMoreFunctionalities() {
        print("passei aqui")
    }
    
    func buildViewHierarchy() {
        addSubview(containerView)
        addSubview(button)
        button.addSubview(stack)
        stack.addArrangedSubview(title)
        stack.addArrangedSubview(subtitle)
        stack.addArrangedSubview(drawImage)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.leftAnchor.constraint(equalTo: leftAnchor),
            containerView.rightAnchor.constraint(equalTo: rightAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            button.topAnchor.constraint(equalTo: containerView.topAnchor),
            button.leftAnchor.constraint(equalTo: containerView.leftAnchor),
            button.rightAnchor.constraint(equalTo: containerView.rightAnchor),
            button.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            
            stack.topAnchor.constraint(equalTo: button.topAnchor),
            stack.leftAnchor.constraint(equalTo: button.leftAnchor, constant: 10),
            stack.rightAnchor.constraint(equalTo: button.rightAnchor, constant: -6),
            stack.bottomAnchor.constraint(equalTo: button.bottomAnchor),
        ])
    }
    
}

