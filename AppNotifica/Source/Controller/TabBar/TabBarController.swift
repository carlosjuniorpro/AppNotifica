//
//  TabBarViewController.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 23 on 29/11/22.
//

import Foundation
import UIKit
class TabBarController: UITabBarController{
    
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: animated)
        self.tabBar.tintColor = .buttonBackGroundColor
        self.tabBar.isTranslucent = true
        UITabBar.appearance().barTintColor =  .viewBackGroundColor
    }
}
