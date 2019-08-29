//
//  SecondVCRouter.swift
//  delete
//
//  Created by hrt03 on 2019/8/27.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import ZIKRouter
import ZRouter

// 快捷注册
// ZIKAnyViewRouter.register(RoutableView<EditorViewInput>(), forMakingView: SecondVC.self)
protocol SecondViewModuleInput {
    
}

class SecondViewConfiguration: ZIKViewMakeableConfiguration<SecondVC>, SecondViewModuleInput {
    
}


class SecondVCRouter: ZIKViewRouter<SecondVC, ZIKViewMakeableConfiguration<SecondVC>> {
    
    override class func registerRoutableDestination() {
        registerView(SecondVC.self)
        register(RoutableView<SecondViewProtocol>())
        register(RoutableViewModule<SecondViewModuleInput>())

    }
    override class func defaultRouteConfiguration() -> ZIKViewMakeableConfiguration<SecondVC> {
        return SecondViewConfiguration()
    }
    // 创建模块
    override func destination(with configuration: ZIKViewMakeableConfiguration<SecondVC>) -> SecondVC? {
        if let make = configuration.makeDestination {
            return make()
        }
        let destination: SecondVC = SecondVC.init()
        destination.title = "SecondVC"
        return destination
    }
    
//    override func prepareDestination(_ destination: SecondVC, configuration: ViewRouteConfig) {
//        //为 destination 注入依赖
//    }
    
    
}

extension SecondVC: ZIKRoutableView {
    
}

//Declare SecondViewProtocol is routable
extension RoutableView where Protocol == SecondViewProtocol {
    init() { self.init(declaredProtocol: Protocol.self) }
}


//Declare SecondViewModuleInput is routable
extension RoutableViewModule where Protocol == SecondViewModuleInput {
    init() { self.init(declaredProtocol: Protocol.self) }
}
