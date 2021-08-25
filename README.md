# LYZ_EasyNavigation
 简单易用,功能丰富的导航控制器
 使用非常简单
pod 'LYZ_EasyNavigation'

使用:
导航控制器使用: LYZEasyNavigationController

window = UIWindow(frame: UIScreen.main.bounds)

let rootVC = LYZEasyNavigationController(rootViewController: LYZTest1ViewController())

window?.rootViewController = rootVC

window?.makeKeyAndVisible()

所有的 vc 集成于 LYZEasyViewController ,推荐创建一个 basevc 用于集成    

class LYZTest1ViewController: LYZEasyViewController
