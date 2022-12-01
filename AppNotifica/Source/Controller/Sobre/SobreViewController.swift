//
//  SobreViewController.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 23 on 29/11/22.
//

import Foundation
import UIKit

class SobreViewController: ViewControllerDefault {
    
    //MARK: - Closures
    
    lazy var sobreView: SobreView = {
        let sobreView = SobreView()
        
        return sobreView
    }()
    
    
    override func loadView() {
        self.view = sobreView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sobre"
       
    }
}




