//
//  RegisterViewController.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 23 on 22/11/22.
//


import Foundation
import UIKit

class RegisterViewController: UIViewController {
    var viewMain = RegisterView()
    
    override func loadView() {
        self.view = viewMain
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Registrar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
    }
}

