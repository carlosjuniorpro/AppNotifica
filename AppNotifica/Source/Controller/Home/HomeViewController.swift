//
//  HomeViewController.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 23 on 24/11/22.
//

import Foundation
import UIKit


class HomeViewController: ViewControllerDefault {
    
    
    
    lazy var homeView: HomeView = {
        let homeView = HomeView()
        
    
        return homeView
    }()
    override func loadView() {
        self.view = homeView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
       
    }
}
