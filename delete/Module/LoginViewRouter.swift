//
//  LoginViewRouter.swift
//  delete
//
//  Created by hrt03 on 2019/8/29.
//Copyright © 2019 dengchaojie. All rights reserved.
//

import ZRouter
import ZIKRouter.Internal
import LoginModule

class LoginViewRouter: ZIKViewRouter<LoginViewController, ViewRouteConfig> {
    
    override class func registerRoutableDestination() {
        registerExclusiveView(LoginViewController.self)
        register(RoutableView<LoginViewProtocol>())
        register(RoutableViewModule<LoginModuleInput>())
    }
    
    override class func defaultRouteConfiguration() -> ViewRouteConfig {
        let config = ViewMakeableConfiguration<LoginViewProtocol, (String) -> LoginViewProtocol?>({ _ in return nil })
        
        config.__prepareDestination = { destination in
            // Prepare destination
//            destination
        }
        
        config.makeDestinationWith = { [unowned config] (arguments) in
            config.makeDestination = { () in
                // Instantiate destination. Return nil if configuration is invalid.
                let destination: LoginViewController? = LoginViewController()
                return destination
            }
            if let destination = config.makeDestination?() {
                config.__prepareDestination?(destination)
                config.makedDestination = destination
                return destination
            }
            return nil
        }
        return config
    }
    
    override func destination(with configuration: ViewRouteConfig) -> LoginViewController? {
        if let config = configuration as? ViewMakeableConfiguration<LoginViewProtocol, (String) -> LoginViewProtocol?>,
            let makeDestination = config.makeDestination {
            return makeDestination() as? LoginViewController ?? nil
        }
        // Instantiate destination with configuration. Return nil if configuration is invalid.
        let destination: LoginViewController? = LoginViewController()
        return destination
    }
    
    /*
    // If the destiantion is UIView / NSView, override and return route types for UIView / NSView
    override class func supportedRouteTypes() -> ZIKViewRouteTypeMask {
        return .viewDefault
    }
    */
}

//RoutableView
extension LoginViewController: ZIKRoutableView {
    
}

extension RoutableView where Protocol == LoginViewProtocol {
    init() { self.init(declaredProtocol: Protocol.self) }
}


extension LoginViewController: LoginViewProtocol {
    var notifyString: String? {
        get {
            return msgHello
        }
        set {
            msgHello = newValue
        }
    }
    
    
}
//RoutableViewModule
extension RoutableViewModule where Protocol == LoginModuleInput {
    init() { self.init(declaredTypeName: "LoginModuleInput") }
}

extension ViewMakeableConfiguration: LoginModuleInput where Destination == LoginViewProtocol, Constructor == (String) -> LoginViewProtocol? {
    var message: String? {
        get {
            return self.constructorContainer["message"] as? String
        }
        set {
            self.constructorContainer["message"] = newValue
        }
    }
    
    
}
