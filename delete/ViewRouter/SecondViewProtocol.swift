//
//  SecondViewProtocol.swift
//  delete
//
//  Created by hrt03 on 2019/8/28.
//  Copyright © 2019 dengchaojie. All rights reserved.
//

import Foundation


///SecondViewProtocol 模块的接口和依赖
protocol SecondViewProtocol: class  {
//    weak var delegate: EditorDelegate? { get set }
    var name: String? { get set }
    var age: Int? { get set }
    func constructForCreatingNewNote()
}
