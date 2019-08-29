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
    
    override func destination(with configuration: ViewRouteConfig) -> FourthVC? {
        // Instantiate destination with configuration. Return nil if configuration is invalid.
        let destination: FourthVC? = FourthVC()
        return destination
    }
    
    override func prepareDestination(_ destination: FourthVC, configuration: ViewRouteConfig) {
        // Prepare destination
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
