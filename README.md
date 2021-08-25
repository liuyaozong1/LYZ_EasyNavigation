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

更多新的功能持续更新中.....
