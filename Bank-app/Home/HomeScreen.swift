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
        layout.itemSize = CGSize(width: 62, height: 62)
      
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
        collectionView.register(BankFunctionalitiesCollectionViewCell.self, forCellWithReuseIdentifier: "customCellIdentifier")
        return collectionView
    }()
    
    lazy var moreFunctionalitiesCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: 62, height: 62)
      
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .clear
//        collectionView.register(BankFunctionalitiesCollectionViewCell.self, forCellWithReuseIdentifier: "customCellIdentifier")
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
    
    func setupCollectionDelegateDataSource(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        bankFunctionalitiesCollectionView.delegate = delegate
        bankFunctionalitiesCollectionView.dataSource = dataSource
    }
    
    func addSubviews() {
        addSubview(userHeaderView)
        addSubview(balanceView)
        addSubview(bannerView)
        addSubview(bankFunctionalitiesCollectionView)
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

            bannerView.topAnchor.constraint(equalTo: balanceView.bottomAnchor, constant: topMargin),
            bannerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: sideMargin),
            bannerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -sideMargin),
            bannerView.heightAnchor.constraint(equalToConstant: 130),

            bankFunctionalitiesCollectionView.topAnchor.constraint(equalTo: bannerView.bottomAnchor, constant: 24),
            bankFunctionalitiesCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: sideMargin),
            bankFunctionalitiesCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -sideMargin),
            bankFunctionalitiesCollectionView.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
}



    
