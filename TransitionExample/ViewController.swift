//
//  ViewController.swift
//  TransitionExample
//
//  Created by 長内幸太郎 on 2019/12/17.
//  Copyright © 2019 長内幸太郎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedViewControllersをいじる(_ sender: Any) {
        let greenViewController = self.storyboard?.instantiateViewController(identifier: "GreenViewController") as! GreenViewController
        self.navigationController?.viewControllers = [greenViewController]
    }
    
    @IBAction func tappedSegue(_ sender: Any) {
        self.performSegue(withIdentifier: "show", sender: nil)
    }
    
    @IBAction func tappedShow2(_ sender: Any) {
        let greenViewController = self.storyboard?.instantiateViewController(identifier: "GreenViewController") as! GreenViewController
        self.navigationController?.show(greenViewController, sender: nil)
    }
    
}

