//
//  AppDelegate.swift
//  LYZ_EsayNavigation
//
//  Created by liuyaozong on 2021/8/18.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        let rootVC = LYZEasyNavigationController(rootViewController: LYZTest1ViewController())
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
        
        return true
    }



}

