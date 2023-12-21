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
        btn.setImage(UIImage(named: ""), for: .normal)
       return btn
    }()
    
    override init(frame: CGRect) {
      super.init(frame: frame)
      
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }
    
    func buildViewHierarchy() {
        
    }
    
    func setupConstraints() {
        
    }
    
}
