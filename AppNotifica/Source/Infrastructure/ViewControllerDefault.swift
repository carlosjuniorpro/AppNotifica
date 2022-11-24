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
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
}
