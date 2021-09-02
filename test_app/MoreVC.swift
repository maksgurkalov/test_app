//
//  MoreVC.swift
//  test_app
//
//  Created by maks on 01.09.2021.
//

import UIKit

class MoreVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    private func initialize() {
        view.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
        self.title = "Ещё"
        
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(title: "Еще", image: UIImage(named: "iconMore"), tag: 2)
        
        self.tabBarItem = tabBarItem
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
