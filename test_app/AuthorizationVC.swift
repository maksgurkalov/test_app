//
//  AuthorizationVC.swift
//  test_app
//
//  Created by maks on 01.09.2021.
//

import UIKit
import SnapKit

class AuthorizationVC: UIViewController {
    
    
    /// Закрытие окна
    
    @objc func pushVC () {
        dismiss(animated: true)
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        
        
        /// Кнопка "Отмена" для закрытия окна
        
        var tapToDismis = UIButton()
        tapToDismis = UIButton(type: .roundedRect)
        view.addSubview(tapToDismis)
        tapToDismis.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(pushVC)))
        tapToDismis.setTitle("Отмена", for: .normal)
        tapToDismis.titleLabel?.textColor = UIColor.green
        tapToDismis.titleLabel?.font = UIFont(name: "SFCompactDisplay-Regular", size: 17)
        tapToDismis.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(12)
            maker.right.equalToSuperview().inset(24)
            maker.width.equalTo(64)
            maker.height.equalTo(20)
        }
        
        
        /// Надпись "Авторизация"
        
        let authorizationLabel = UILabel()
        
        view.addSubview(authorizationLabel)
        authorizationLabel.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(72)
            maker.left.equalToSuperview().inset(24)
            maker.right.equalToSuperview().inset(24)
        }
        authorizationLabel.text = "Авторизация"
        authorizationLabel.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        authorizationLabel.font = UIFont(name: "Roboto-Bold", size: 36)
        authorizationLabel.frame = CGRect(x: 24, y: 72, width: 327, height: 100)
        
        
        /// Надпись "Почта"
        
        let mailLabel = UILabel()
        view.addSubview(mailLabel)
        mailLabel.text = "Почта"
        mailLabel.textColor = UIColor(red: 0.616, green: 0.616, blue: 0.616, alpha: 1)
        mailLabel.frame = CGRect(x: 0, y: 0, width: 52, height: 20)
        mailLabel.attributedText = NSMutableAttributedString(string: "Почта ", attributes: [NSAttributedString.Key.kern: 0.51])
        mailLabel.font = UIFont(name: "Roboto-Bold", size: 17)
        mailLabel.translatesAutoresizingMaskIntoConstraints = false
        mailLabel.widthAnchor.constraint(equalToConstant: 52).isActive = true
        mailLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        mailLabel.leadingAnchor.constraint(equalTo: authorizationLabel.leadingAnchor, constant: 25).isActive = true
        mailLabel.topAnchor.constraint(equalTo: authorizationLabel.topAnchor, constant: 132).isActive = true
        mailLabel.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(132)
            maker.left.equalToSuperview().inset(25)
        }
            
        
        /// Поле для ввода почты
        
        let inputMail = UITextField()
        self.view.addSubview(inputMail)
        inputMail.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(160)
            maker.left.equalToSuperview().inset(17)
            maker.right.equalToSuperview().inset(15)
            maker.width.equalTo(343)
            maker.height.equalTo(44)
        }
        inputMail.textAlignment = .left
        inputMail.backgroundColor = .white
        inputMail.textColor = .black
        inputMail.layer.cornerRadius = CGFloat(10.0)
        inputMail.layer.borderColor = UIColor.gray.cgColor
        inputMail.layer.borderWidth = 1.0
        inputMail.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: inputMail.frame.height))
        inputMail.leftViewMode = .always
        

        
        /// Надпись "Пароль"
        
        let passwordLabel = UILabel()
        view.addSubview(passwordLabel)
        passwordLabel.text = "Пароль"
        passwordLabel.textColor = UIColor(red: 0.616, green: 0.616, blue: 0.616, alpha: 1)
        passwordLabel.frame = CGRect(x: 0, y: 0, width: 70, height: 20)
        passwordLabel.font = UIFont(name: "Roboto-Bold", size: 17)
        passwordLabel.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(220)
            maker.left.equalToSuperview().inset(25)
            maker.width.equalTo(62)
            maker.height.equalTo(20)
        }
        
        
        /// Поле для ввода пароля
        
        let inputPassword = UITextField()
        self.view.addSubview(inputPassword)
        inputPassword.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(250)
            maker.left.equalToSuperview().inset(17)
            maker.right.equalToSuperview().inset(15)
            maker.width.equalTo(343)
            maker.height.equalTo(44)
        }
        inputPassword.textAlignment = .left
        inputPassword.backgroundColor = .white
        inputPassword.textColor = .black
        inputPassword.layer.cornerRadius = CGFloat(10.0)
        inputPassword.layer.borderColor = UIColor.gray.cgColor
        inputPassword.layer.borderWidth = 1.0
        inputPassword.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: inputPassword.frame.height))
        inputPassword.leftViewMode = .always
        inputPassword.isSecureTextEntry = true
    
        
        /// Кнопка "Войти"
        
        let signInButton = UIButton()
        view.addSubview(signInButton)
        signInButton.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(316)
            maker.left.equalToSuperview().inset(17)
            maker.right.equalToSuperview().inset(15)
            maker.width.equalTo(343)
            maker.height.equalTo(44)
        }
        signInButton.backgroundColor = UIColor(red: 0.161, green: 0.51, blue: 1, alpha: 1)
        signInButton.layer.cornerRadius = CGFloat(10.0)
        signInButton.setTitle("Войти", for: .normal)
        signInButton.titleLabel?.font = UIFont(name: "Roboto-Medium", size: 17)
        
        
        /// "Регистрация"
        
        let signUpLabel = UILabel()
        view.addSubview(signUpLabel)
        signUpLabel.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(376)
            maker.left.equalToSuperview().inset(136)
            maker.right.equalToSuperview().inset(132)
        }
        signUpLabel.text = "Регистрация"
        signUpLabel.textAlignment = .center
        signUpLabel.textColor = UIColor(red: 0.161, green: 0.51, blue: 1, alpha: 1)
        signUpLabel.font = UIFont(name: "Roboto-Regular", size: 17)
        
        
        /// left stroke
        
        let leftStroke = UIView()
        view.addSubview(leftStroke)
        leftStroke.layer.borderWidth = 10
        leftStroke.layer.borderColor = UIColor.gray.cgColor
        leftStroke.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(420)
            maker.left.equalToSuperview().inset(25)
            //maker.right.equalToSuperview().inset(200)
            maker.width.equalTo(160)
            maker.height.equalTo(1)
        }
        
        
        /// right stroke
        
        let rightStroke = UIView()
        view.addSubview(rightStroke)
        rightStroke.layer.borderWidth = 10
        rightStroke.layer.borderColor = UIColor.gray.cgColor
        rightStroke.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(420)
            maker.right.equalToSuperview().inset(23)
            maker.width.equalTo(160)
            maker.height.equalTo(1)
        }
        
        
        /// Надпись "или"
        
        let labelOr = UILabel()
        view.addSubview(labelOr)
        labelOr.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(412)
            maker.left.equalToSuperview().inset(136)
            maker.right.equalToSuperview().inset(132)
        }
        labelOr.text = "или"
        labelOr.textAlignment = .center
        labelOr.textColor = UIColor(red: 0.616, green: 0.616, blue: 0.616, alpha: 1)
        labelOr.font = UIFont(name: "Roboto-Regular", size: 12)
        
        
        /// Кнопка "Войти с помощью Google"
        
        let signInWithGoogle = UIButton()
        view.addSubview(signInWithGoogle)
        signInWithGoogle.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(442)
            maker.left.equalToSuperview().inset(17)
            maker.right.equalToSuperview().inset(15)
            maker.width.equalTo(343)
            maker.height.equalTo(44)
        }
        signInWithGoogle.backgroundColor = UIColor(red: 0.161, green: 0.51, blue: 1, alpha: 1)
        signInWithGoogle.layer.cornerRadius = CGFloat(10.0)
        signInWithGoogle.setTitle("Войти с помощью Google", for: .normal)
        signInWithGoogle.titleLabel?.font = UIFont(name: "Roboto-Medium", size: 17)
        signInWithGoogle.setImage(UIImage(named: "googleImage"), for: .normal)
        signInWithGoogle.imageEdgeInsets.left = -8
        signInWithGoogle.imageView?.layer.cornerRadius = CGFloat()
        signInWithGoogle.imageView?.layer.cornerRadius = (signInWithGoogle.imageView?.bounds.height)! / 2
        
        
        /// Кнопка "Войти с Apple"
        
        let signInWithApple = UIButton()
        view.addSubview(signInWithApple)
        signInWithApple.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(502)
            maker.left.equalToSuperview().inset(17)
            maker.right.equalToSuperview().inset(15)
            maker.width.equalTo(343)
            maker.height.equalTo(44)
        }
        signInWithApple.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        signInWithApple.layer.cornerRadius = CGFloat(10.0)
        signInWithApple.setTitle("Войти с Apple", for: .normal)
        signInWithApple.titleLabel?.font = UIFont(name: "Roboto-Medium", size: 17)
        signInWithApple.setImage(UIImage(named: "appleImage"), for: .normal)
        signInWithApple.imageEdgeInsets.left = -8
    }
}




    


