//
//  CountDownViewController.swift
//  colorful
//
//  Created by lotus on 05/03/2018.
//  Copyright © 2018 lotus. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class CountDownViewController: UIViewController {
    
    var disposeBag = DisposeBag()

    lazy var bgImageView: UIImageView = {
        let imageView = UIImageView(frame: view.frame)
        imageView.image = R.image.bg_blue()
        return imageView
    }()
    
    lazy var setBarItem: UIBarButtonItem = {
        let setBarItem: UIBarButtonItem = UIBarButtonItem.rsBarButton(image: R.image.settings()!, selectedImage: R.image.settings()!)
        (setBarItem.customView as? UIButton)?.rx.tap.subscribe(onNext: {
            print("点击了")
        }).disposed(by: disposeBag)
//        setBarItem.customView as UIButton
        return setBarItem
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        initNavigationBar()
    
        // Do any additional setup after loading the view.
    }
    
    func initNavigationBar() {
        
        navigationController?.navigationBar.subviews[0].removeFromSuperview()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        view.backgroundColor = UIColor.brown
        title = "Colorful Days"
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationItem.leftBarButtonItem = setBarItem
        
        
        view.addSubview(bgImageView)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
