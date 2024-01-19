//
//  HomeViewController.swift
//  Bank-app
//
//  Created by Maria Tupich on 19/12/23.
//

import UIKit
import Foundation

class HomeViewController: UIViewController {
    
    var homeScreen: HomeScreen?

    override func loadView() {
        self.homeScreen = HomeScreen()
        self.view = homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen?.setupCollectionDelegateDataSource(delegate: self, dataSource: self)
        
        guard let app = UIApplication.shared.delegate as? AppDelegate,
              let window = app.window else { return }
        window.rootViewController = MenuTabBarController()
        window.makeKeyAndVisible()
    }
        
    private func getTotalRows(collectionView: UICollectionView) -> Int {
      switch HomeBlockIdentifier(rawValue: collectionView.tag) {
      case .bankFacilities:
          return BankFunctionalitiesEnum.allCases.count
      case .moreFacilities:
          return MoreFunctionalitiesEnum.allCases.count
      case .none:
        return 0
      }
    }
    
    
    private func getCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
      switch HomeBlockIdentifier(rawValue: collectionView.tag) {
      case .bankFacilities:
          let cell: BankFunctionalitiesCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! BankFunctionalitiesCollectionViewCell
          let functionality = BankFunctionalitiesEnum.allCases[indexPath.item]
          cell.button.setImage(functionality.icon, for: .normal)
          cell.title.text = functionality.name
          return cell
      case .moreFacilities:
          let cell: MoreFunctionalitiesCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! MoreFunctionalitiesCell
          let functionality = MoreFunctionalitiesEnum.allCases[indexPath.item]
          cell.title.text = functionality.title
          cell.subtitle.text = functionality.subtitle
          cell.drawImage.image = functionality.icon
          return cell
      case .none:
        return UICollectionViewCell()
      }
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return getTotalRows(collectionView: collectionView)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return getCell(collectionView: collectionView, indexPath: indexPath)
    }
    
}


