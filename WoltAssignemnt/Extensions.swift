//
//  Extensions.swift
//  WoltAssignemnt
//
//  Created by Saim on 02/03/2020.
//  Copyright © 2020 Saim. All rights reserved.
//

import Foundation
import UIKit
extension UIView {
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize(width: -2, height: 3.0)
        layer.shadowRadius =  5
        layer.cornerRadius = 10
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}
