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


protocol FiveViewProtocol {
    
}

class FiveVC: UIViewController, FiveViewProtocol {
    
    override func viewDidLoad() {
        
    }
    
}

extension FiveVC: ZIKRoutableView {

}

extension RoutableView where Protocol == FiveViewProtocol {
    init() { self.init(declaredProtocol: Protocol.self) }
}

