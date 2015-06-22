//
//  ViewController.swift
//  AutoLayout
//
//  Created by Duke Yao on 2015/6/11.
//  Copyright (c) 2015年 Duke Yao Company. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var secure:Bool = false { didSet { updateUI() } }
    
    private func updateUI() {
        passwordField.secureTextEntry = secure
        passwordLabel.text = secure ? "Secure Password" : "Password"
    }
    
    @IBAction func toggleSecurity() {
        secure = !secure
    }
    
    @IBAction func login() {
    }
    
    
}

