//
//  HomeCoordinator.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 23 on 24/11/22.
//

import Foundation
import UIKit


class HomeCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    
    lazy var homeViewController: HomeViewController = {
       let viewController = HomeViewController()
        return viewController
    }()
    
    
    init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = HomeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
    }
    
   
}

