//
//  ViewController.swift
//  test_app
//
//  Created by maks on 31.08.2021.
//

import SnapKit
import UIKit

class ViewController: UIViewController, UITabBarControllerDelegate {
    
//    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
//        let tabBarIndex = tabBarController.selectedIndex
//        if tabBarIndex == 0 {
//        }
//    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
        self.tabBarController?.delegate = self
    }

    @objc func pushVC () {
        let newViewController = AuthorizationVC()
    self.navigationController?.pushViewController(newViewController, animated: true)
    }
    
    private func initialize() {
        view.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
        self.navigationController?.isNavigationBarHidden = true
        
        let mainImage = UIImageView()
        view.addSubview(mainImage)
        mainImage.image = UIImage(named: "mainImage")
        mainImage.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.top.equalToSuperview().inset(76)
        }
        
        let mainText = UILabel()
        view.addSubview(mainText)
        mainText.text = "Test app 1.0"
        mainText.textAlignment = .center
        mainText.textColor = UIColor(red: 0.616, green: 0.616, blue: 0.616, alpha: 1)
        mainText.font = UIFont(name: "SFCompactDisplay-Medium", size: 15)
        mainText.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.top.equalToSuperview().inset(164)
        }
        
//        let authVC = AccountVC()
        
        var authorizationButton = UIButton ()
        authorizationButton = UIButton(type: .roundedRect)
        authorizationButton.addTarget(pushVC, action: #selector(pushVC), for: .touchUpInside)
        authorizationButton.layer.borderWidth = 1.0
        authorizationButton.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        authorizationButton.backgroundColor = UIColor.white
        authorizationButton.clipsToBounds = false
        authorizationButton.frame.size = CGSize(width: 343, height: 44.0)
        authorizationButton.setTitle("Авторизация", for: .normal)
        authorizationButton.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 17)
        authorizationButton.setTitleColor(UIColor(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        authorizationButton.layer.cornerRadius = CGFloat(10.0)
        view.addSubview(authorizationButton)
        //self.navigationController?.pushViewController(authVC, animated: true)
        authorizationButton.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(214)
            maker.centerX.equalToSuperview()
            maker.left.equalToSuperview().inset(16)
            maker.right.equalToSuperview().inset(16)
        }
        
        var tabBarItem = UITabBarItem()
        tabBarItem = UITabBarItem(title: "Главная", image: UIImage(named: "iconCard"), tag: 0)
        self.tabBarItem = tabBarItem
        tabBarItem = UITabBarItem(title: "Аккаунт", image: UIImage(named: "union"), tag: 1)
        
        

        
    
    }
}

        
        
        

        

