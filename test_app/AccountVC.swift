//
//  AccountVC.swift
//  test_app
//
//  Created by maks on 01.09.2021.
//

import UIKit

class AccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
        private func initialize() {
            view.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
            self.title = "Аккаунт"
            self.navigationItem.title = "Аккаунт"
            
            var tabBarItem = UITabBarItem()
            tabBarItem = UITabBarItem(title: "Аккаунт", image: UIImage(named: "union"), tag: 1)
            
            self.tabBarItem = tabBarItem
}
}
