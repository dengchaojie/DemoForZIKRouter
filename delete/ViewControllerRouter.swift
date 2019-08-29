//
//  ViewControllerRouter.swift
//  delete
//
//  Created by hrt03 on 2019/8/27.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import ZIKRouter.Internal
import ZRouter

// 快捷注册



class ViewControllerRouter: ZIKViewRouter<ViewController,
    ZIKViewMakeableConfiguration<SecondVC>> {
    override class func registerRoutableDestination() {
        registerView(ViewController.self)
        register(RoutableView<ViewControllerProtocol>())
        register(RoutableViewModule<SecondViewModuleInput>())
    }
    
    override class func defaultRouteConfiguration() -> ZIKViewMakeableConfiguration<SecondVC> {
        return SecondViewConfiguration()
    }
    
    // 创建模块
    override func destination(with configuration: ViewRouteConfig) -> ViewController? {
        let destination: ViewController = ViewController.init()
        destination.title = "ViewController"
        return destination
    }
    
    override func prepareDestination(_ destination: ViewController, configuration: ViewRouteConfig) {
        //为 destination 注入依赖
    }
}

extension ViewController: ZIKRoutableView {
    
}

//Declare ViewControllerInput is routable
extension RoutableView where Protocol == ViewControllerProtocol {
    init() { self.init(declaredProtocol: Protocol.self) }
}


