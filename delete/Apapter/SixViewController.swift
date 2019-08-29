//
//  SixViewController.swift
//  delete
//
//  Created by hrt03 on 2019/8/29.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import UIKit

class SixViewController: UIViewController, SixViewProtocol {
    func func1() {
        print("func1")
    }
    
    func func2() {
        print("func2")

    }
    
    func func3() {
        print("func3")

    }
    
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.green
        print("SixViewController")
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
