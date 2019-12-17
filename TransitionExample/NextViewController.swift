//
//  NextViewController.swift
//  TransitionExample
//
//  Created by 長内幸太郎 on 2019/12/17.
//  Copyright © 2019 長内幸太郎. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedDismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        var result: String = ""
        var buf: String = ""

        result += "\n-------------------- children\n"
        dump(self.children, to: &buf)
        result += buf

        result += "\n-------------------- presentingViewController\n"
        dump(self.presentingViewController, to: &buf)
        result += buf

        result += "\n-------------------- parent\n"
        dump(self.parent, to: &buf)
        result += buf

        result += "\n-------------------- navigationController?.viewControllers\n"
        dump(self.navigationController?.viewControllers, to: &buf)
        result += buf

        result += "\n-------------------- view.window?.rootViewController\n"
        dump(self.view.window?.rootViewController, to: &buf)
        result += buf
        
        result += "\n-------------------- topViewController\n"
        dump(self.navigationController?.topViewController, to: &buf)
        result += buf
        
        textView.text = result
    }
    
}
