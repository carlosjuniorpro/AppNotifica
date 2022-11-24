//
//  RegisterViewController.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 23 on 22/11/22.
//


import Foundation
import UIKit

class RegisterViewController: UIViewController {
    
    //MARK: - Initialize
    var onLoginTap:(() -> Void)?
    
    lazy var registerView: RegisterView = {
        let registerView = RegisterView()
        
        registerView.onLoginTap = { 
            self.onLoginTap?()
        }
        
        return registerView
    }()
    override func loadView() {
        self.view = registerView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Registrar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
    }
}

