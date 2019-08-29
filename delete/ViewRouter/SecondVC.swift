//
//  secondVC.swift
//  delete
//
//  Created by hrt03 on 2019/8/27.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import UIKit

class SecondVC: UIViewController, SecondViewProtocol {
    var name: String?
    
    var age: Int?
    
    override func viewDidLoad() {
        print("SecondVC")
        self.view.backgroundColor = UIColor.purple;
        print("name \(String(describing: name)), age \(String(describing: age))")
    }
    
    func constructForCreatingNewNote() {
        print("SecondVC constructForCreatingNewNote")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true, completion: nil)

    }
}
