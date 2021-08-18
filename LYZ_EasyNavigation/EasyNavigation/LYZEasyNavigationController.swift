//
//  LYZNavigationController.swift
//  LYZ_EsayNavigation
//
//  Created by liuyaozong on 2021/8/18.
//

import UIKit

class LYZEasyNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //隐藏掉系统 navigationBar
        self.navigationBar.isHidden = true
    }
    
    //*注：当VC在nav中时，setNeedsStatusBarAppearanceUpdate的方法无效，VC中的preferredStatusBarStyle方法根本不用被调用。 原因是，[self setNeedsStatusBarAppearanceUpdate]发出后，只会调用navigation controller中的preferredStatusBarStyle方法，vc中的preferredStatusBarStyley方法跟本不会被调用。
    override var childForStatusBarStyle: UIViewController?
    {
        return self.topViewController
    }
    

}

