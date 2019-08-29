//
//  SixViewRouter.swift
//  delete
//
//  Created by hrt03 on 2019/8/29.
//Copyright © 2019 dengchaojie. All rights reserved.
//

import ZRouter
import ZIKRouter.Internal

class SixViewRouter: ZIKViewRouter<SixViewController, ViewRouteConfig> {
    
    override class func registerRoutableDestination() {
        registerExclusiveView(SixViewController.self)
        register(RoutableView<SixViewProtocol>())
    }
    
    override func destination(with configuration: ViewRouteConfig) -> SixViewController? {
        // Instantiate destination with configuration. Return nil if configuration is invalid.
        let destination: SixViewController? = SixViewController()
        return destination
    }
    
    override func prepareDestination(_ destination: SixViewController, configuration: ViewRouteConfig) {
        // Prepare destination
    }
    
    /*
    // If the destiantion is UIView / NSView, override and return route types for UIView / NSView
    override class func supportedRouteTypes() -> ZIKViewRouteTypeMask {
        return .viewDefault
    }
    */
}

extension SixViewController: ZIKRoutableView {
    
}

extension RoutableView where Protocol == SixViewProtocol {
    init() { self.init(declaredTypeName: "SixViewProtocol") }
}
