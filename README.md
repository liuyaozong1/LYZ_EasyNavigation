# LYZ_EasyNavigation
 简单易用,功能丰富的导航控制器
 使用非常简单
 
pod 'LYZ_EasyNavigation'

使用:
导航控制器使用: LYZEasyNavigationController
```

window = UIWindow(frame: UIScreen.main.bounds)

let rootVC = LYZEasyNavigationController(rootViewController: LYZTest1ViewController())

window?.rootViewController = rootVC

window?.makeKeyAndVisible()

所有的 vc 集成于 LYZEasyViewController ,推荐创建一个 basevc 用于集成    

class LYZTest1ViewController: LYZEasyViewController
```
```

lyz_navigationBar //导航栏 View

lyz_navTitle //标题

lyz_navBackgroundColor //导航栏背景颜色

lyz_backgroundImage //导航栏背景图片

lyz_tinColor //所有按钮的颜色

lyz_statusBarType //设置状态栏状态

lyz_canSideslipBack //是否可以侧滑返回

rightFirstBtn //从右到左第一个按钮

rightSecondBtn //从右到左第二个按钮

rightThirdBtn //从右到左第三个按钮

等等等.....
```
全局配置
```
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
```

更多新的功能持续更新中.....
