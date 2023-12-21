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
    }
    

}
