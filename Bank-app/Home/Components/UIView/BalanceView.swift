//
//  BalanceView.swift
//  Bank-app
//
//  Created by Maria Tupich on 20/12/23.
//

import UIKit

class BalanceView: UIView {
    
    lazy var containerView: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.backgroundColor = UIColor(red: 45.0 / 255.0, green: 45.0 / 255.0, blue: 45.0 / 255.0, alpha: 1.0)
        container.layer.cornerRadius = 8
        container.layer.borderWidth = 1
        return container
    }()
    
    lazy var balanceStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.translatesAutoresizingMaskIntoConstraints = false
         return stack
    }()
    
    lazy var balanceLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "Saldo"
        lbl.font = .systemFont(ofSize: 12)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .white
        return lbl
    }()
    
    lazy var balanceValueLbl: UILabel = {
        let lbl = UILabel()
        lbl.text = "R$ ****"
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.textColor = .white
        lbl.font = .systemFont(ofSize: 16)
        return lbl
    }()
    
    lazy var showHideValue: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        // Set the image to "hide-icon" and tint it to white
        if let hideIconImage = UIImage(named: "hide-icon")?.withRenderingMode(.alwaysTemplate) {
            btn.setImage(hideIconImage, for: .normal)
            btn.tintColor = .white
        }
        
        btn.addTarget(self, action: #selector(didTapShowHide), for: .touchUpInside)
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
    
    @objc func didTapShowHide() {
        print("passei aqui")
    }
    
    func addSubviews() {
        addSubview(containerView)
        addSubview(balanceStackView)
        addSubview(showHideValue)
        balanceStackView.addArrangedSubview(balanceLbl)
        balanceStackView.addArrangedSubview(balanceValueLbl)
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 24),
            containerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -24),
            containerView.heightAnchor.constraint(equalToConstant: 48),
            
            balanceStackView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 12),
            balanceStackView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            
            showHideValue.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            showHideValue.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -10),
            showHideValue.heightAnchor.constraint(equalToConstant: 20),
            showHideValue.widthAnchor.constraint(equalToConstant: 20),
        ])
    }
}
