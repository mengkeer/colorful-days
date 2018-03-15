//
//  UIBarButtonItem+Custom.swift
//  colorful
//
//  Created by lotus on 06/03/2018.
//  Copyright © 2018 lotus. All rights reserved.
//

import Foundation
import UIKit

extension UIBarButtonItem {
    class func rsBarButton(image: UIImage?, selectedImage: UIImage?) -> UIBarButtonItem {
        let btn: UIButton = UIButton(type: .custom)
        btn.setImage(image, for: .normal)
        btn.setImage(selectedImage, for: .highlighted)
        btn.backgroundColor = UIColor.clear        
        
        
        let item = UIBarButtonItem(customView: btn)
        return item
    }
}
