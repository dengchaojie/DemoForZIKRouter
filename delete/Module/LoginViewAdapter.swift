//
//  LoginViewAdapter.swift
//  delete
//
//  Created by hrt03 on 2019/8/29.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import ZRouter
import ZIKRouter.Internal
import LoginModule


//由App Context 实现，让登陆界面支持 ModuleARequiredLoginViewInput
class LoginViewAdapter: ZIKViewRouteAdapter {
    override class func registerRoutableDestination() {
        //如果可以获取到 router 类，可以直接为 router 添加 ModuleARequiredLoginViewInput
        LoginViewRouter.register(RoutableView<ModuleARequiredLoginViewInput>())
        //如果不能得到对应模块的 router，可以注册 adapter
//        register(adapter: RoutableView<ModuleARequiredLoginViewInput>(), forAdaptee: RoutableView<ProvidedLoginViewInput>())
    }
}

extension LoginViewController: ModuleARequiredLoginViewInput {
    var message: String? {
        get {
            return notifyString
        }
        set {
            notifyString = newValue
        }
    }
}


extension RoutableView where Protocol == ModuleARequiredLoginViewInput {
    init() { self.init(declaredProtocol: Protocol.self) }
}

