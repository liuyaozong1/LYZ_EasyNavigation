//
//  LYZEasyDefine.swift
//  LYZ_EsayNavigation
//
//  Created by liuyaozong on 2021/8/18.
//

import UIKit

// MARK: - Public 高度 -
/// 顶部：屏幕导航栏+状态栏总高度
public let kNavAndStatusHeight = StatusBarHeight() + NavBarHeight()
/// 底部：刘海屏底部home键高度,普通屏为0
public let KBottomHomeHeight = UIApplication.shared.windows[0].safeAreaInsets.bottom
/// TabBar高度： 刘海屏=TabBar高度+Home键高度, 普通屏幕为TabBar高度
public let kTabBarHeight = TabbarHeight() + KBottomHomeHeight
/// 当前屏幕宽度
public let kScreenWidth = UIScreen.main.bounds.width
/// 当前屏幕高度
public let kScreenHeight = UIScreen.main.bounds.height

//左边安全距离
public let kSafeLeftDistance = 16.0
//右边安全距离
public let kSafeRightDistance = 16.0
//圆角
public let kRadius: CGFloat = 8.0

/// 状态栏高度
/// - Returns: 高度
public func StatusBarHeight() ->CGFloat {
    if #available(iOS 13.0, *){
        let window = UIApplication.shared.windows.first
        return window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
    }else{
        return UIApplication.shared.statusBarFrame.height
    }
}

/// 导航栏高度 实时获取,可获取不同分辨率手机横竖屏切换后的实时高度变化
/// - Returns: 高度
public func NavBarHeight() ->CGFloat {
    return UINavigationController().navigationBar.frame.size.height
}

/// TabBar高度 实时获取,可获取不同分辨率手机横竖屏切换后的实时高度变化
/// - Returns: 高度
public func TabbarHeight() ->CGFloat {
    return UITabBarController().tabBar.frame.size.height
}

/// 获取iPhone X机型的安全区域高度
public func iphoneXSafeAreaInsets() -> UIEdgeInsets {
    return UIApplication.shared.delegate?.window??.safeAreaInsets ?? UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
}

/// MARK: - 按比例适配宽高，以750*1334为基准
// 宽度比
public func scaleWidth(_ w: CGFloat) -> CGFloat {
    return kScreenWidth / 375 * w
}
// 高度比列
public func scaleHeight(_ h: CGFloat) -> CGFloat {
    return kScreenHeight / 667 * h
}
/// 是否为iPhone X / XS / XR / XS Max / 11 / 11 Pro / 11 Pro Max系列
public var isIPhoneXSeries: Bool {
    var iPhoneXSeries = false
    if UIDevice.current.userInterfaceIdiom != UIUserInterfaceIdiom.phone {
        return iPhoneXSeries
    }
    if let bottom = UIApplication.shared.delegate?.window??.safeAreaInsets.bottom {
        if bottom > CGFloat(0.0) {
            iPhoneXSeries = true
        }
    }
    return iPhoneXSeries
}
// MARK: - Public 颜色 -
public func RGBColor(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat) -> UIColor {
   return UIColor.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
}
 
public func RGBAColor(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
    return UIColor.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
}

/// Application
public let SharedApplication = UIApplication.shared
/// AppDelegate
public let SharedAppDelegate = UIApplication.shared.delegate
/// Main Window
public let AppMainWindow = UIApplication.shared.windows.first
/// Root View Controller
public let RootViewController = UIApplication.shared.delegate?.window??.rootViewController
/// Main Screen
public let AppMainScreen = UIScreen.main
/// Standard UserDefaults
public let StandardUserDefaults = UserDefaults.standard
/// Default Notification Center
public let DefaultNotificationCenter = NotificationCenter.default
/// Default File Manager
public let DefaultFileManager = FileManager.default
/// Main Bundle
public let MainBundle = Bundle.main
