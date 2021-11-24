//
//  AppDelegate.swift
//  LYZ_EsayNavigation
//
//  Created by liuyaozong on 2021/8/18.
//

import UIKit
import LYZEasyNavigation

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        
        LYZEasyNavigationConfig.titleColor = .black
        LYZEasyNavigationConfig.titleFont = .systemFont(ofSize: 20, weight: .bold)
        LYZEasyNavigationConfig.navBackgroundColor = .green
        LYZEasyNavigationConfig.barButtonItemColor = .systemPink
        LYZEasyNavigationConfig.barButtonItemBackgroundColor = .black
        LYZEasyNavigationConfig.barButtonItemPadding = 5
        LYZEasyNavigationConfig.bottomLineColor = .blue
        
        let rootVC = LYZEasyNavigationController(rootViewController: LYZTest1ViewController())
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
        
        return true
    }



}

