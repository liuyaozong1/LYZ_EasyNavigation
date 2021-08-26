//
//  LYZTest1ViewController.swift
//  LYZ_EsayNavigation
//
//  Created by liuyaozong on 2021/8/18.
//

import UIKit

class LYZTest1ViewController: LYZEasyViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        // Do any additional setup after loading the view.
        self.lyz_navTitle = "我的第一个页面哦"
        self.lyz_navBackgroundColor = .red
        self.rightFirstBtn.setTitle("设置", for: .normal)
        self.rightFirstBtn.tap { btn in
            print("点击了设置")
        }

    }
    
    override func clickBack() {
        print("禁止返回")
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = LYZTest2ViewController()
        navigationController?.pushViewController(vc, animated: true)
//        if self.statusBarType == .default {
//            self.statusBarType = .lightContent
//        } else {
//            self.statusBarType = .default
//        }
        
//        bigSmallTitle = !bigSmallTitle
        
    }
}
