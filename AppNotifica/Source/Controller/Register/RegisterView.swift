//
//  RegisterView.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 23 on 22/11/22.
//

import Foundation
import UIKit

class RegisterView: ViewDefault {
    
    //MARK: - Clousures
    var onLoginTap:(() -> Void)?
    
    
    //MARK: - Propities
    // cria a função com as propriedades da label no login
    var imageLabel = LabelDefault(text: "Entre com seu email e sua senha para se registrar", font: UIFont.systemFont(ofSize: 27, weight: .regular))
  
   // cria a função com as propriedades da textfield email do registro
    var emailTextField = TextFieldDefault (placeholder: "E-mail", keyBoardType: .emailAddress, returnKeyType: .next)

    // cria a função com as propriedades da textfield senha do registro
    var senhaTextField: TextFieldDefault = {
        let text = TextFieldDefault (placeholder: "Senha", keyBoardType: .emailAddress, returnKeyType: .next)
         
         text.isSecureTextEntry = true
         
         return text
     }()
    // cria a função com as propriedades da textfield confirmação de senha do Registro
    var confirmarSenhaTextField: TextFieldDefault = {
        let text = TextFieldDefault (placeholder: "Confirmar Senha", keyBoardType: .emailAddress, returnKeyType: .done)
         
         text.isSecureTextEntry = true
         
         return text
     }()
    
    // cria a função com as propriedades button Registrar do registro
    var buttonRegistrar = ButtonDefault(botao: "REGISTRAR")
    
    // cria a função com as propriedades button Logar do registro
    var buttonLogar = ButtonDefault(botao: "LOGAR")
 
   


    

    
   override func setupVisualElements(){
       
        super.setupVisualElements()
        emailTextField.delegate = self
        senhaTextField.delegate = self
        confirmarSenhaTextField.delegate = self
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(senhaTextField)
        self.addSubview(confirmarSenhaTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)
        
        buttonLogar.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
        
       
        
        NSLayoutConstraint.activate([
            
          
            
            imageLabel.widthAnchor.constraint(equalToConstant: 374),
            imageLabel.heightAnchor.constraint(equalToConstant: 60),
            imageLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
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
            
            confirmarSenhaTextField.widthAnchor.constraint(equalToConstant: 374),
            confirmarSenhaTextField.heightAnchor.constraint(equalToConstant: 60),
            confirmarSenhaTextField.topAnchor.constraint(equalTo: senhaTextField.bottomAnchor, constant: 23),
            confirmarSenhaTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            confirmarSenhaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: confirmarSenhaTextField.bottomAnchor, constant: 23),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: buttonRegistrar.bottomAnchor, constant: 23),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            
        ])
    
    }
    
    
    //MARK: - Actions
    @objc
    private func loginTap(){
        onLoginTap?()
    }
}

extension RegisterView: UITextFieldDelegate {
    
    
    // Configura o botão seguinte do teclado
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        
        if textField == emailTextField{
            
            self.senhaTextField.becomeFirstResponder()
            
        } else if textField == senhaTextField{
            
            self.confirmarSenhaTextField.becomeFirstResponder()
            
        } else {
            
            textField.resignFirstResponder()
        }
        
        return true
    }
}
