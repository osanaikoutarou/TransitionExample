//
//  CyanViewController.swift
//  TransitionExample
//
//  Created by 長内幸太郎 on 2019/12/17.
//  Copyright © 2019 長内幸太郎. All rights reserved.
//

import UIKit

class CyanViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.isNavigationBarHidden = true
    }

}
