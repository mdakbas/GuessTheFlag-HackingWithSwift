//
//  BorderColor + Ext.swift
//  GuessTheFlag-HackingSwift
//
//  Created by Mert Deniz Akbaş on 1.08.2023.
//

import UIKit

extension UIButton {
    
    func setBorder(borderWidth: CGFloat, borderColor: CGColor?) {
        self.layer.borderColor = borderColor
        self.layer.borderWidth = borderWidth
    }

    
}
