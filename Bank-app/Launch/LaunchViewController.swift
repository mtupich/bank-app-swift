//
//  SuaLaunchScreenView.swift
//  Bank-app
//
//  Created by Maria Tupich on 11/12/23.
//

import Foundation
import UIKit

class LaunchViewController: UIViewController {
    
    var launchScreenView: LaunchScreen?
    
    override func loadView() {
        self.launchScreenView = LaunchScreen()
        self.view = launchScreenView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}


