//
//  TabbarViewController.swift
//  colorful
//
//  Created by lotus on 05/03/2018.
//  Copyright © 2018 lotus. All rights reserved.
//

import UIKit

class TabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildVC(controller: CountDownViewController(), title: "Home", image: R.image.settings())
        addChildVC(controller: TimelineViewController(), title: "Timeline", image: R.image.settings())
    }

    func addChildVC(controller: UIViewController, title: String, image: UIImage?) -> Swift.Void {
        controller.tabBarItem.title = title
        controller.tabBarItem.image = image
        controller.tabBarItem.selectedImage = R.image.settings()
        
        let nav = UINavigationController(rootViewController: controller)
        addChildViewController(nav)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
