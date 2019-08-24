//
//  ViewController.swift
//  demoLineView
//
//  Created by Ngoc on 8/23/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // let shadowPath = UIBezierPath(rect: myView.bounds).cgPath
       // myView.layer.shadowColor = #colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1)
            // myView.layer.shadowPath = shadowPath
        
        
        
//        
//        myView.layer.shadowOffset = CGSize(width: 0, height: 2)
//        myView.layer.shadowOpacity = 1
//        myView.layer.masksToBounds = false
//        myView.layer.shadowRadius = 0
        
        
        
        let shadowSize : CGFloat = 10
        let shadowPath = UIBezierPath(rect: CGRect(x: -shadowSize / 2,
                                                   y: -shadowSize / 2,
                                                   width: self.button.frame.size.width + shadowSize,
                                                   height: self.button.frame.size.height + shadowSize))
        self.button.layer.masksToBounds = false
        self.button.layer.shadowColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
        self.button.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.button.layer.shadowOpacity = 0.5
        self.button.layer.shadowPath = shadowPath.cgPath
    }


}

