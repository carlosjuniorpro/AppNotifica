//
//  LoginView.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 23 on 08/11/22.
//

import Foundation
import UIKit

class LoginView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackGroundColor
        
        setupVisualElements()
    }
    
    // cria a função com as propriedades da imagem no login
    var imageLogin = ImageDefault(image: "ImageLogin")
    
    
    // cria a função com as propriedades da label no login
    var imageLabel = LabelDefault(text: "Registre e gerencie as ocorrências do seu IF", font: UIFont(name: "SFProDisplay-Light", size: 17)!)
    //var imageLabel: UILabel = {
    //    let label = UILabel()
    //    label.textColor = .textLabelColor
    //   label.font = UIFont(name: "SFProDisplay-Light", size: 16)
    //    label.text = "Registre e gerencie as ocorrências do seu IF"
    //    label.translatesAutoresizingMaskIntoConstraints = false
        
    //    return label
    //}()
    
   
    // cria a função com as propriedades da textfield email do login
    var emailTextField = TextFieldDefault (placeholder: "E-mail")
   // var emailTextField: UITextField = {
   //     let textfield = UITextField()
   //     textfield.backgroundColor = .textFieldBackGroundColor
    //    textfield.placeholder = "E-mail"
    //    textfield.translatesAutoresizingMaskIntoConstraints = false
        
    //    return textfield
   // }()
    
    // cria a função com as propriedades da textfield senha do login
    var senhaTextField = TextFieldDefault (placeholder: "Senha")
    
    //var senhaTextField: UITextField = {
    //    let textfield = UITextField()
    //    textfield.backgroundColor = .textFieldBackGroundColor
    //    textfield.placeholder = "Senha"
    //    textfield.translatesAutoresizingMaskIntoConstraints = false
        
    //    return textfield
    //}()
    
    
    // cria a função com as propriedades button Logar do login
    var buttonLogar = ButtonDefault(botao: "LOGAR")
    //var buttonLogar: UIButton = {
    //    let button = UIButton()
    //    button.setTitle("LOGAR", for: .normal)
    //    button.backgroundColor = .buttonBackGroundColor
    //    button.layer.cornerRadius = 14
    //    button.translatesAutoresizingMaskIntoConstraints = false
        
    //    return button
    // }()
    
    // cria a função com as propriedades button Registrar do login
    var buttonRegistrar = ButtonDefault(botao: "REGISTRAR")
    //var buttonRegistrar: UIButton = {
    //    let button = UIButton()
    //    button.setTitle("REGISTRAR", for: .normal)
    //    button.backgroundColor = .buttonBackGroundColor
    //    button.layer.cornerRadius = 14

    //    button.translatesAutoresizingMaskIntoConstraints = false
        
    //    return button
    // }()
    

    

    
    func setupVisualElements(){
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)
        
       
        
        NSLayoutConstraint.activate([
            
            imageLogin.widthAnchor.constraint(equalToConstant: 274.99),
            imageLogin.heightAnchor.constraint(equalToConstant: 82.64),
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),
            
            imageLabel.widthAnchor.constraint(equalToConstant: 100),
            imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 5),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            senhaTextField.widthAnchor.constraint(equalToConstant: 374),
            senhaTextField.heightAnchor.constraint(equalToConstant: 60),
            senhaTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 23),
            senhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            senhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 23),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: buttonLogar.bottomAnchor, constant: 23),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
        ])
    
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
