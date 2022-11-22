//
//  LabelDefault.swift
//  AppNotifica
//
//  Created by IFB BIOTIC 23 on 17/11/22.
//

import Foundation
import UIKit

class LabelDefault : UILabel{
    
    init(text: String, font: UIFont){
        super.init(frame: .zero)
        initDefault(text: text, font: font)
    }
    
    private func initDefault(text: String, font: UIFont){
        self.text = text
        self.textColor = .textLabelColor
        self.font = font
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
}
