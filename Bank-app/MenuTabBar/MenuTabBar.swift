//
//  MenuTabBar.swift
//  Bank-app
//
//  Created by Maria Tupich on 29/12/23.
//

import UIKit

class MenuTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.barTintColor = UIColor.red
        tabBar.tintColor = UIColor.red
        tabBar.isTranslucent = false

        let homeViewController = UIViewController()
        homeViewController.view.backgroundColor = UIColor.red
        homeViewController.tabBarItem = UITabBarItem(title: "Home", image: nil, tag: 0)

        let favoritesViewController = UIViewController()
        favoritesViewController.view.backgroundColor = UIColor.green
        favoritesViewController.tabBarItem = UITabBarItem(title: "Favoritos", image: nil, tag: 1)

        let settingsViewController = UIViewController()
        settingsViewController.view.backgroundColor = UIColor.yellow
        settingsViewController.tabBarItem = UITabBarItem(title: "Configurações", image: nil, tag: 2)

        let moreViewController = UIViewController()
        moreViewController.view.backgroundColor = UIColor.purple
        moreViewController.tabBarItem = UITabBarItem(title: "Mais", image: nil, tag: 3)

        viewControllers = [homeViewController, favoritesViewController, settingsViewController, moreViewController]
    }
}


