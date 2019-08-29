//
//  FiveVC.swift
//  delete
//
//  Created by hrt03 on 2019/8/29.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import Foundation
import ZIKRouter
import ZRouter


protocol FiveViewProtocol: class {
    
}

class FiveVC: UIViewController, FiveViewProtocol {
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor.brown
        print("FiveVC")
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true, completion: nil)
        
    }
}

extension FiveVC: ZIKRoutableView {

}

extension RoutableView where Protocol == FiveViewProtocol {
    init() { self.init(declaredProtocol: Protocol.self) }
}

