//
//  MoreVC.swift
//  test_app
//
//  Created by maks on 01.09.2021.
//

import UIKit

class TabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initialize()
    }
    
    
    func initialize() {
            viewControllers = [
                createNavController(for: ViewController(), title: "Главная", image: UIImage(named: "iconCard")!),
                createNavController(for: AccountVC(), title: "Аккаунт", image: UIImage(named: "union")!),
                createNavController(for: MoreVC(), title: "Еще", image: UIImage(named: "iconMore")!)
            ]
        }
     
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                         title: String,
                                         image: UIImage) -> UIViewController {
          let navController = UINavigationController(rootViewController: rootViewController)
          navController.tabBarItem.title = title
          navController.tabBarItem.image = image
          navController.navigationBar.prefersLargeTitles = true
          rootViewController.navigationItem.title = title
          return navController
      }

}
