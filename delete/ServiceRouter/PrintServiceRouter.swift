//
//  PrintServiceRouter.swift
//  delete
//
//  Created by hrt03 on 2019/8/28.
//Copyright © 2019 dengchaojie. All rights reserved.
//

import ZRouter
import ZIKRouter.Internal

class PrintServiceRouter: ZIKServiceRouter<Print, PerformRouteConfig> {
    
    override class func registerRoutableDestination() {
        registerExclusiveService(Print.self)
        register(RoutableService<PrintServiceProtocol>())
    }
    
    override func destination(with configuration: PerformRouteConfig) -> Print? {
        // Instantiate destination with configuration. Return nil if configuration is invalid.
        let destination: Print? = Print()
        return destination
    }
    
    override func prepareDestination(_ destination: Print, configuration: PerformRouteConfig) {
        // Prepare destination
    }
    
}

extension Print: ZIKRoutableService {
    
}

extension RoutableService where Protocol == PrintServiceProtocol {
    init() { self.init(declaredTypeName: "PrintServiceProtocol") }
}
