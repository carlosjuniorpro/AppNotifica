//
//  ViewDefault.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 23 on 29/11/22.
//

import Foundation
import UIKit

class ViewDefault: UIView {
    
    //MARK: - Initialize
        override init(frame: CGRect) {
            super.init(frame: frame)
            self.backgroundColor = .viewBackGroundColor
        
            setupVisualElements()
        }
    func setupVisualElements(){
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
