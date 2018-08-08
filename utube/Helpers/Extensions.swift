//
//  Extensions.swift
//  utube
//
//  Created by _coz on 2018/08/08.
//  Copyright © 2018 _coz. All rights reserved.
//

import UIKit

extension UIView {
    func addContraintsWithFormat(format: String, views: UIView...){
        var viewsDictionary = [String: UIView]()
        
        for(index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
