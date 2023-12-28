//
//  HomeViewController.swift
//  Bank-app
//
//  Created by Maria Tupich on 19/12/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    var homeScreen: HomeScreen?

    override func loadView() {
        self.homeScreen = HomeScreen()
        self.view = homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen?.setupCollectionDelegateDataSource(delegate: self, dataSource: self)
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return BankFunctionalitiesEnum.allCases.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCellIdentifier", for: indexPath) as! BankFunctionalitiesCollectionViewCell
        
        let functionality = BankFunctionalitiesEnum.allCases[indexPath.item]
        cell.button.setImage(functionality.icon, for: .normal)
        cell.title.text = functionality.name
        return cell
    }
    
}
