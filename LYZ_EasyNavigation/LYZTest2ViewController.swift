//
//  LYZTest2ViewController.swift
//  LYZ_EsayNavigation
//
//  Created by liuyaozong on 2021/8/18.
//

import UIKit

class LYZTest2ViewController: LYZEasyViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.lyz_navTitle = "第二个"
        //禁止侧滑返回
        self.lyz_canSideslipBack = false
        self.rightFirstBtn.setTitle("设置", for: .normal)
    }
    
    override func clickBack() {
        print("禁止返回")
        navigationController?.popViewController(animated: true)
    }
    
    deinit {
        print("销毁了------")
    }

}
