//
//  SixViewAdapter.swift
//  delete
//
//  Created by hrt03 on 2019/8/29.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import Foundation

import ZRouter
import ZIKRouter.Internal


class SixViewAdapter: ZIKViewRouteAdapter {
    
    override class func registerRoutableDestination() {
        //如果可以获取到 router 类，可以直接为 router 添加 RequiredEditorViewInput
        SixViewRouter.register(RoutableView<SixViewRequiredProtocol>())
        
        //如果不能得到对应模块的 router，可以注册 adapter
//        register(adapter: RoutableView<SixViewRequiredProtocol>(), forAdaptee: RoutableView<SixViewProtocol>())
    }
    
}


/// 让 SixViewController 支持 SixViewRequiredProtocol
extension SixViewController: SixViewRequiredProtocol {
    
}

extension RoutableView where Protocol == SixViewRequiredProtocol {
    init() { self.init(declaredTypeName: "SixViewRequiredProtocol") }
}
