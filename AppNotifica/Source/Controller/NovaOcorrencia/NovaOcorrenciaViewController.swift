//
//  NovaOcorrenciaViewController.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 23 on 29/11/22.
//

import Foundation
import UIKit

class NovaOcorrenciaViewController: ViewControllerDefault {
    
    //MARK: - Closures
    
    
    // cria uma variável
    
    lazy var novaOcorrenciaView: NovaOcorrenciaView = {
        let novaOcorrenciaView = NovaOcorrenciaView()
        
        return novaOcorrenciaView
    }()
    
    
    override func loadView() {
        self.view = novaOcorrenciaView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nova Ocorrencia"
      
        
    }
}




