//
//  FourthVC.swift
//  delete
//
//  Created by hrt03 on 2019/8/28.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import UIKit

class FourthVC: UIViewController, FourthViewProtocol {
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.blue;
        print("FourthVC");
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true, completion: nil)
        
    }
}
