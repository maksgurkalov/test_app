//
//  ViewController.swift
//  test_app
//
//  Created by maks on 31.08.2021.
//

import SnapKit
import UIKit

class ViewController: UIViewController, UITabBarControllerDelegate {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }

    
        /// Переход для presentation model
    
    @objc func pushVC () {
        let newViewController = AuthorizationVC()
        present(newViewController, animated: true, completion: nil)
    }
    
    
    private func initialize() {
        view.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
        self.navigationController?.isNavigationBarHidden = true
        
        
        /// Изображение на главной
        
        let mainImage = UIImageView()
        view.addSubview(mainImage)
        mainImage.image = UIImage(named: "mainImage")
        mainImage.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.top.equalToSuperview().inset(76)
        }
        
        
        /// Название, версия app
        
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
        
        
        /// Кнопка "Авторизация"
        
        var authorizationButton = UIButton ()
        authorizationButton = UIButton(type: .roundedRect)
        authorizationButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(pushVC)))
        authorizationButton.layer.borderWidth = 1.0
        authorizationButton.layer.borderColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
        authorizationButton.backgroundColor = UIColor.white
        authorizationButton.clipsToBounds = false
        authorizationButton.frame = CGRect(x: 0, y: 0, width: 343, height: 44)
        authorizationButton.setTitle("Авторизация", for: .normal)
        authorizationButton.titleLabel?.font = UIFont(name: "Roboto-Regular", size: 17)
        authorizationButton.setTitleColor(UIColor(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
        authorizationButton.layer.cornerRadius = CGFloat(10.0)
        view.addSubview(authorizationButton)
        authorizationButton.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(214)
            maker.centerX.equalToSuperview()
            maker.left.equalToSuperview().inset(16)
            maker.right.equalToSuperview().inset(16)
            maker.width.equalTo(343)
            maker.height.equalTo(44)
        }
    }
}

        
        
        

        

