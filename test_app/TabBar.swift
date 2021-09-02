//
//  TabBar.swift
//  test_app
//
//  Created by Dinas on 02.09.2021.
//

import UIKit

class TabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        initialize()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func initialize() {
            viewControllers = [
                createNavController(for: ViewController(), title: "Search", image: UIImage(named: "iconCard")!),
                createNavController(for: AccountVC(), title: "Home", image: UIImage(named: "union")!),
                createNavController(for: MoreVC(), title: "Profile", image: UIImage(named: "iconMore")!)
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
