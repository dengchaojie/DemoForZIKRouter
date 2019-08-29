//
//  LoginModuleInput.swift
//  delete
//
//  Created by hrt03 on 2019/8/29.
//Copyright © 2019 dengchaojie. All rights reserved.
//

//#error("replace /*arguments*/ with type of module config parameters")
protocol LoginModuleInput: class {
    // Transfer parameters and make destination
    var message: String? { get  }
    
    var makeDestinationWith: (_ param: String) -> LoginViewProtocol? { get }
}
