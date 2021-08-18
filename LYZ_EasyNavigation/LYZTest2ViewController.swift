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
        
    }
    
    override func clickBack() {
        print("禁止返回")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
