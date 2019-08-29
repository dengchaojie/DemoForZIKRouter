//
//  LoginViewController.swift
//  LoginModule
//
//  Created by hrt03 on 2019/8/29.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import UIKit


public class LoginViewController: UIViewController {
    var notifyString: String?
    
    
    override public func viewDidLoad() {
        
        self.view.backgroundColor = UIColor.blue
        print("LoginViewController")
        
        print(notifyString ?? "message is nil")
    }
    
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
