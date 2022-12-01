//
//  TabBarCoordinator.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 23 on 29/11/22.
//

import Foundation
import UIKit

class TabBarCoordinator: Coordinator {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let tabBarController = TabBarController()
        
        let homeViewCoordinator = HomeCoordinator(navigationController: self.navigationController)
        let novaOcorrenciaViewCoordinator = NovaOcorrenciaCoordinator(navigationController: self.navigationController)
        let sobreViewCoordinator = SobreCoordinator(navigationController: self.navigationController)
        
        tabBarController.setViewControllers([homeViewCoordinator.homeViewController, novaOcorrenciaViewCoordinator.novaOcorrenciaViewController, sobreViewCoordinator.sobreViewController], animated: true)
        
        self.navigationController.pushViewController(tabBarController, animated: true)
    }
}
