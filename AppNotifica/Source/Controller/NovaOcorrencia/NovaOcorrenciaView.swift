//
//  NovaOcorrenciaView.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 23 on 29/11/22.
//

import Foundation
import UIKit

class NovaOcorrenciaView: ViewDefault {
    //MARK: - Closures
    var onCameraTap:(()-> Void)?
    
    lazy var imagem: UIImageView = {
        let view = UIImageView ()
        view.image = UIImage(named: "imagemCamera")
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(cameraTap))
        view.addGestureRecognizer(tapGR)
        view.isUserInteractionEnabled = true
        
        view.translatesAutoresizingMaskIntoConstraints =  false
        return view
        
    }()
    
    lazy var titleTextField = TextFieldDefault(placeholder: "Título", keyBoardType: .default, returnKeyType: .next)
    lazy var descriptionTextField = TextFieldDefault(placeholder: "Descrição", keyBoardType: .default, returnKeyType: .next)
    lazy var localizationTextField = TextFieldDefault(placeholder: "Localização", keyBoardType: .default, returnKeyType: .next)
    lazy var statusTextField = TextFieldDefault(placeholder: "Status", keyBoardType: .default, returnKeyType: .done)
    lazy var saveButton = ButtonDefault(botao: "SALVAR")
    
    
  
    
    override func setupVisualElements() {
        self.addSubview(imagem)
        self.addSubview(titleTextField)
        self.addSubview(descriptionTextField)
        self.addSubview(localizationTextField)
        self.addSubview(statusTextField)
        self.addSubview(saveButton)
        
        NSLayoutConstraint.activate([
            imagem.heightAnchor.constraint(equalToConstant: 200),
            imagem.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            imagem.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            imagem.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            titleTextField.widthAnchor.constraint(equalToConstant: 374),
            titleTextField.heightAnchor.constraint(equalToConstant: 60),
            titleTextField.topAnchor.constraint(equalTo: imagem.bottomAnchor, constant: 20),
            titleTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            titleTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            descriptionTextField.widthAnchor.constraint(equalToConstant: 374),
            descriptionTextField.heightAnchor.constraint(equalToConstant: 60),
            descriptionTextField.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 20),
            descriptionTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            descriptionTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            localizationTextField.widthAnchor.constraint(equalToConstant: 374),
            localizationTextField.heightAnchor.constraint(equalToConstant: 60),
            localizationTextField.topAnchor.constraint(equalTo: descriptionTextField.bottomAnchor, constant: 20),
            localizationTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            localizationTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            statusTextField.widthAnchor.constraint(equalToConstant: 374),
            statusTextField.heightAnchor.constraint(equalToConstant: 60),
            statusTextField.topAnchor.constraint(equalTo: localizationTextField.bottomAnchor, constant: 20),
            statusTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            saveButton.widthAnchor.constraint(equalToConstant: 374),
            saveButton.heightAnchor.constraint(equalToConstant: 60),
            saveButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 20),
            saveButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            saveButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
        
        ])
    }
    
    @objc
    
    private func cameraTap () {
        self.onCameraTap?()
        
    }
     func setImage (image: UIImage){
        imagem.image = image
    }
    
    
}
