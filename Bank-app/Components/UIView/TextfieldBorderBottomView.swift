//
//  TextfieldBorderBottomView.swift
//  Bank-app
//
//  Created by Maria Tupich on 14/12/23.
//

import Foundation
import UIKit

class TextfieldBorderBottomView: UIView {
    
    lazy var container: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    lazy var title: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textColor = .white
        title.font = UIFont.boldSystemFont(ofSize: 10)
        return title
    }()
    
    lazy var placeholder: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var border: UIView = {
        let border = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 1))
        border.translatesAutoresizingMaskIntoConstraints = false
        border.backgroundColor = .white
        border.clipsToBounds = true
        return border
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
        addSubview(container)
        addSubview(title)
        addSubview(placeholder)
        addSubview(border)
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: topAnchor),
            container.leftAnchor.constraint(equalTo: leftAnchor),
            container.rightAnchor.constraint(equalTo: rightAnchor),
            container.heightAnchor.constraint(equalToConstant: 50),
            
            title.topAnchor.constraint(equalTo: container.topAnchor),
            title.leftAnchor.constraint(equalTo: container.leftAnchor),
            title.rightAnchor.constraint(equalTo: container.rightAnchor),
            title.bottomAnchor.constraint(equalTo: placeholder.topAnchor),
            
            placeholder.topAnchor.constraint(equalTo: title.bottomAnchor),
            placeholder.leftAnchor.constraint(equalTo: container.leftAnchor),
            placeholder.rightAnchor.constraint(equalTo: container.rightAnchor),
            placeholder.bottomAnchor.constraint(equalTo: border.topAnchor),
            
            border.topAnchor.constraint(equalTo: placeholder.bottomAnchor),
            border.leftAnchor.constraint(equalTo: container.leftAnchor),
            border.rightAnchor.constraint(equalTo: container.rightAnchor),
            border.heightAnchor.constraint(equalToConstant: 1),
        ])
    }
    
}
