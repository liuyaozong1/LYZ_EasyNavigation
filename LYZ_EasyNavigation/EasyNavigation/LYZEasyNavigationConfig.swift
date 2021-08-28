//
//  LYZEasyNavigationConfig.swift
//  LYZ_EsayNavigation
//
//  Created by liuyaozong on 2021/8/28.
//

import UIKit

open class LYZEasyNavigationConfig: NSObject {
    static public var navBackgroundColor: UIColor = .white  //全局配置背景颜色
    static public var navBackgroundImage: UIImage? = nil //背景图片
    static public var navBackgroundImageMode: UIView.ContentMode = .scaleToFill
    static public var tintColor: UIColor = .black  //按钮全局颜色
    static public var statusBarType: UIStatusBarStyle = .default //状态栏
    static public var barButtonItemFont: UIFont = .systemFont(ofSize: 14) // 按钮 font
    static public var barButtonItemColor: UIColor = .black // 按钮颜色
    static public var barButtonItemBackgroundColor: UIColor = .clear // 按钮颜色
    static public var barButtonItemPadding: CGFloat = 5 // 按钮之间的距离
    static public var titleColor: UIColor = .black //一级标题颜色
    static public var titleFont: UIFont = .systemFont(ofSize: 16) //一级标题font
    static public var navBackButtonImage: UIImage? = LYZEasyLoadFileTool.loadImage(imgName: "back_icon") //返回按钮图片
    static public var subTitleColor: UIColor = .gray //二级标题颜色
    static public var subTitleFont: UIFont = .systemFont(ofSize: 12) //二级标题font
    static public var bottomLineColor: UIColor = RGBColor(234, 234, 234)//导航栏底部线的颜色
    static public var bottomLineHeight: CGFloat = 1//导航栏底部线的颜色
    
    
    
}
