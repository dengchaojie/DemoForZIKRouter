//
//  FourthViewRouter.swift
//  delete
//
//  Created by hrt03 on 2019/8/28.
//Copyright © 2019 dengchaojie. All rights reserved.
//

import ZRouter
import ZIKRouter.Internal

class FourthViewRouter: ZIKViewRouter<FourthVC, ViewRouteConfig> {
    
    override class func registerRoutableDestination() {
        registerExclusiveView(FourthVC.self)
        register(RoutableView<FourthViewProtocol>())
        registerURLPattern("app://FourthVC")

    }
    // 处理urlRouter中的路径和参数
    override func processUserInfo(_ userInfo: [AnyHashable : Any] = [:], from url: URL) {
        print(userInfo)
        let title = userInfo["name"]
        let age = userInfo["age"]
        print(title!)
        print(age!)
        print(url)
    }
    
    override func destination(with configuration: ViewRouteConfig) -> FourthVC? {
        // Instantiate destination with configuration. Return nil if configuration is invalid.
        let destination: FourthVC? = FourthVC()
        return destination
    }
    
    override func prepareDestination(_ destination: FourthVC, configuration: ViewRouteConfig) {
        // Prepare destination
        
        // 处理来自 url 的参数
        let title = configuration.userInfo["name"]
        let age = configuration.userInfo["age"]
        print(title ?? "title is nil")
        print(age ?? "age is nil")
    }
    
    // 事件处理
    @objc class func applicationDidEnterBackground(_ application: UIApplication)
    {
        
    }
    
    /*
    // If the destiantion is UIView / NSView, override and return route types for UIView / NSView
    override class func supportedRouteTypes() -> ZIKViewRouteTypeMask {
        return .viewDefault
    }
    */
}

extension FourthVC: ZIKRoutableView {
    
}

extension RoutableView where Protocol == FourthViewProtocol {
    init() { self.init(declaredTypeName: "FourthViewProtocol") }
}
