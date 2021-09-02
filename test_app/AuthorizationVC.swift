//
//  AuthorizationVC.swift
//  test_app
//
//  Created by maks on 01.09.2021.
//

import UIKit
import SnapKit

class AuthorizationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        
        let authorizationLabel = UILabel()
        view.addSubview(authorizationLabel)
        //authorizationText.snp.makeConstraints { maker in
//            maker.top.equalToSuperview().inset(72)
//            maker.left.equalToSuperview().inset(24)
//            maker.right.equalToSuperview().inset(24)
//        }
        authorizationLabel.text = "Авторизация"
        authorizationLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        authorizationLabel.font = UIFont(name: "Roboto-Bold", size: 300)
        authorizationLabel.frame = CGRect(x: 24, y: 72, width: 327, height: 100)
        view.addSubview(authorizationLabel)
        
        let passwordLabel = UILabel()
        view.addSubview(passwordLabel)
        passwordLabel.text = "Почта"
        passwordLabel.textColor = UIColor(red: 0.616, green: 0.616, blue: 0.616, alpha: 1)
        

    }
    
//    private func initialize () {
//
//        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
//
//        let authorizationText = UILabel()
//        view.addSubview(authorizationText)
//        //authorizationText.snp.makeConstraints { maker in
////            maker.top.equalToSuperview().inset(72)
////            maker.left.equalToSuperview().inset(24)
////            maker.right.equalToSuperview().inset(24)
////        }
//        authorizationText.text = "Авторизация"
//        authorizationText.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
//        authorizationText.font = UIFont(name: "Roboto-Bold", size: 300)
//        authorizationText.frame = CGRect(x: 24, y: 72, width: 327, height: 100)
//        view.addSubview(authorizationText)
//
//
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


