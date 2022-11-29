//
//  ViewControllerDefault.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 23 on 24/11/22.
//

import Foundation
import UIKit


class ViewControllerDefault: ViewController {
    
    // É executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        //Aumenta o tamanho do texto e do título
        self.navigationController?.navigationBar.prefersLargeTitles = true
        //faz desaparecer o link voltar no lado superior esquerdo da tela
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
