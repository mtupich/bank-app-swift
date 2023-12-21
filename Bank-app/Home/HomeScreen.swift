//
//  HomeScreen.swift
//  Bank-app
//
//  Created by Maria Tupich on 19/12/23.
//

import UIKit

class HomeScreen: UIView {
    
    lazy var userHeaderView: UserHeaderView = {
        let header = UserHeaderView()
        header.translatesAutoresizingMaskIntoConstraints = false
        return header
    }()
    
    lazy var balanceView: BalanceView = {
        let balance = BalanceView()
        balance.translatesAutoresizingMaskIntoConstraints = false
        return balance
    }()
    
    lazy var bannerView: BannerView = {
       let banner = BannerView()
       banner.translatesAutoresizingMaskIntoConstraints = false
       return banner
    }()
    
    lazy var bankFunctionalitiesCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
//        layout.itemSize = CGSize(width: 100, height: 100)
      
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        setUpConstraints()
        backgroundColor = .black
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        addSubview(userHeaderView)
        addSubview(balanceView)
        addSubview(bannerView)
    }

    func setUpConstraints() {
        NSLayoutConstraint.activate([
            userHeaderView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            userHeaderView.leftAnchor.constraint(equalTo: leftAnchor),
            userHeaderView.rightAnchor.constraint(equalTo: rightAnchor),
            userHeaderView.heightAnchor.constraint(equalToConstant: 60),
            
            balanceView.topAnchor.constraint(equalTo: userHeaderView.bottomAnchor),
            balanceView.leftAnchor.constraint(equalTo: userHeaderView.leftAnchor),
            balanceView.rightAnchor.constraint(equalTo: userHeaderView.rightAnchor),
            balanceView.heightAnchor.constraint(equalToConstant: 60),

            bannerView.topAnchor.constraint(equalTo: balanceView.bottomAnchor, constant: 24),
            bannerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 24),
            bannerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -24),
        ])
    }
}


