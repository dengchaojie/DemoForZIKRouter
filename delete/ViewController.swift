//
//  ViewController.swift
//  delete
//
//  Created by hrt03 on 2019/8/27.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import UIKit
import ZIKRouter
import ZRouter
import LoginModule


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // serviceRouter
        let priService = Router.makeDestination(to: RoutableService<PrintServiceProtocol>())
        priService?.printFunc(log: "serviceRouter")

    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // viewRouter
//        Router.perform(
//            to: RoutableView<SecondViewProtocol>(),
//            path: .presentModally(from: self)
//            )
        // 快速注册
//        Router.perform(
//            to: RoutableView<FiveViewProtocol>(),
//            path: .presentModally(from: self)
//            )
        
        // viewRouter+config
//        Router.perform(
//            to: RoutableView<SecondViewProtocol>(),
//            path: .presentModally(from: self),
//            configuring:  { (config, _) in
//                config.prepareDestination = { [weak self] destination in
//                    destination.name = "zuik"
//                    destination.age = 20
//                }
//            }
//        )

        // viewRouter到oc的view
//        Router.perform(
//            to: RoutableView<ThirdViewProtocol>(),
//            path: .presentModally(from: self))
        
        // urlRouter
//        FourthViewRouter.performURL("app://FourthVC", path: .presentModally(from: self))
        
        // adapter
//        Router.perform(
//            to: RoutableView<SixViewRequiredProtocol>(),
//            path: .presentModally(from: self),
//            configuring:
//                { (config, _) in
//                    config.prepareDestination =
//                        { [weak self] destination in
//                            destination.func1()
//                            destination.func2()
//
//                        }
//                }
//            )
        
        // module+RoutableViewModule
        Router.perform(
            to: RoutableViewModule<LoginModuleInput>(),
            path: .presentModally(from: self),
            configuring: { (config, prepareModule) in

                prepareModule({ module in
                    module.makeDestinationWith("dcj")
                })

        }
        )
        
        // module+adapter+RoutableView
//        Router.perform(
//            to: RoutableView<LoginViewProtocol>(),
//            path: .presentModally(from: self),
//            configuring:
//                { (config, _) in
//                    config.prepareDestination =
//                        { [weak self] destination in
//                            destination.notifyString = "LoginViewProtocol"//LoginViewProtocol
////                            destination.message = "hello, my name is dcj"//ModuleARequiredLoginViewInput
//                        }
//                }
//            )
        

    }
}

