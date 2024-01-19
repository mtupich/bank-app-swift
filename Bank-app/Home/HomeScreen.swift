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
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 62, height: 62)
        layout.minimumInteritemSpacing = 22
        layout.minimumLineSpacing = 22
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        collectionView.register(BankFunctionalitiesCollectionViewCell.self, forCellWithReuseIdentifier: "cell1")
        collectionView.tag = HomeBlockIdentifier.bankFacilities.rawValue
        return collectionView
    }()
    
    lazy var moreFunctionalitiesCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 150, height: 170)
        layout.minimumInteritemSpacing = 20
        layout.minimumLineSpacing = 20
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        collectionView.register(MoreFunctionalitiesCell.self, forCellWithReuseIdentifier: "cell2")
        collectionView.tag = HomeBlockIdentifier.moreFacilities.rawValue
        return collectionView
    }()
    
    lazy var customTabBarView: CustomTabBarView = {
       let tab = CustomTabBarView()
       tab.translatesAutoresizingMaskIntoConstraints = false
       tab.stack.backgroundColor = UIColor(red: 45.0 / 255.0, green: 45.0 / 255.0, blue: 45.0 / 255.0, alpha: 1.0)
       return tab
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
    
    func setupCollectionDelegateDataSource(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        bankFunctionalitiesCollectionView.delegate = delegate
        bankFunctionalitiesCollectionView.dataSource = dataSource
        moreFunctionalitiesCollectionView.delegate = delegate
        moreFunctionalitiesCollectionView.dataSource = dataSource
    }
    
    func addSubviews() {
        addSubview(userHeaderView)
        addSubview(balanceView)
        addSubview(bannerView)
        addSubview(bankFunctionalitiesCollectionView)
        addSubview(moreFunctionalitiesCollectionView)
        addSubview(customTabBarView)
    }

    func setUpConstraints() {
        let topMargin: CGFloat = 24
        let sideMargin: CGFloat = 24
        
        NSLayoutConstraint.activate([
            userHeaderView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            userHeaderView.leadingAnchor.constraint(equalTo: leadingAnchor),
            userHeaderView.trailingAnchor.constraint(equalTo: trailingAnchor),
            userHeaderView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1),

            balanceView.topAnchor.constraint(equalTo: userHeaderView.bottomAnchor),
            balanceView.leadingAnchor.constraint(equalTo: userHeaderView.leadingAnchor),
            balanceView.trailingAnchor.constraint(equalTo: userHeaderView.trailingAnchor),
            balanceView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.1),

            bannerView.topAnchor.constraint(equalTo: balanceView.bottomAnchor, constant: 16),
            bannerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: sideMargin),
            bannerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -sideMargin),
            bannerView.heightAnchor.constraint(equalToConstant: 130),

            bankFunctionalitiesCollectionView.topAnchor.constraint(equalTo: bannerView.bottomAnchor, constant: 24),
            bankFunctionalitiesCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: sideMargin),
            bankFunctionalitiesCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -sideMargin),
            bankFunctionalitiesCollectionView.heightAnchor.constraint(equalToConstant: 100),
            
            moreFunctionalitiesCollectionView.topAnchor.constraint(equalTo: bankFunctionalitiesCollectionView.bottomAnchor, constant: 16),
            moreFunctionalitiesCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: sideMargin),
            moreFunctionalitiesCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -sideMargin),
            moreFunctionalitiesCollectionView.bottomAnchor.constraint(equalTo: customTabBarView.topAnchor, constant: -16),
            
            customTabBarView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            customTabBarView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            customTabBarView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            customTabBarView.heightAnchor.constraint(equalToConstant: 46),
        ])
    }
}



    
