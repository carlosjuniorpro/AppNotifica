//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 23 on 08/11/22.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    var viewMain = LoginView()
    
    override func loadView() {
        self.view = viewMain
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Logar"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
    }
}
