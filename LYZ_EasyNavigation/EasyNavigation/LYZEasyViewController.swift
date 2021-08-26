//
//  LYZEasyViewController.swift
//  LYZ_EsayNavigation
//
//  Created by liuyaozong on 2021/8/18.
//

import UIKit
import SnapKit
class LYZEasyViewController: UIViewController {
    //导航 view
    lazy var lyz_navigationBar = LYZEasyNavigationBar().apply {
        $0.lyz_backBtn.addTarget(self, action: #selector(clickBack), for: .touchUpInside)
    }
    //标题
    var lyz_navTitle = "" {
        didSet {
            lyz_navigationBar.lyz_titleLabel.text = lyz_navTitle
        }
    }
    //小标题
    var lyz_navSubtitle = ""
    //背景颜色
    var lyz_navBackgroundColor: UIColor = .white {
        didSet {
            lyz_navigationBar.backgroundColor = lyz_navBackgroundColor
        }
    }
    //背景图片
    var lyz_backgroundImage: UIImage = UIImage() {
        didSet {
            lyz_navigationBar.lyz_backgroundImageView.image = lyz_backgroundImage
        }
    }
    //设置颜色
    var lyz_tinColor: UIColor = .clear {
        didSet {
            lyz_navigationBar.lyz_backBtn.tintColor = lyz_tinColor
        }
    }
    //设置状态栏
    var lyz_statusBarType: UIStatusBarStyle = .default {
        didSet {
            //更新状态栏
            //*注：当VC在nav中时，setNeedsStatusBarAppearanceUpdate的方法无效，VC中的preferredStatusBarStyle方法根本不用被调用。 原因是，[self setNeedsStatusBarAppearanceUpdate]发出后，只会调用navigation controller中的preferredStatusBarStyle方法，vc中的preferredStatusBarStyley方法跟本不会被调用。
            setNeedsStatusBarAppearanceUpdate()
        }
    }
    //大小标题
    var lyz_bigSmallTitle: Bool = false {
        didSet {
            if lyz_bigSmallTitle {
                lyz_navigationBar.lyz_titleStackView.addArrangedSubview(lyz_navigationBar.lyz_navSubtitleLabel)
            } else {
                lyz_navigationBar.lyz_navSubtitleLabel.removeFromSuperview()
            }
        }
    }
    //是否可以侧滑返回
    var lyz_canSideslipBack: Bool = true {
        didSet {
            navigationController?.interactivePopGestureRecognizer?.isEnabled = lyz_canSideslipBack
        }
    }
    //按钮的大小
    lazy var lyz_itemBtnFont: UIFont = UIFont.systemFont(ofSize: 14){
        didSet {
            self.lyz_navigationBar.lyz_rightStackView.arrangedSubviews.forEach { btn in
                if btn.isKind(of: UIButton.self) {
                    (btn as! UIButton).titleLabel?.font = lyz_itemBtnFont
                }
            }
        }
    }
    //按钮的间距
    var lyz_itemBtnPadding: CGFloat = 5 {
        didSet {
            self.lyz_navigationBar.lyz_rightStackView.spacing = lyz_itemBtnPadding
        }
    }
    //右边第一个按钮
    var rightFirstBtn: UIButton {
        get {
            if !isDesofStackView(btn: self.lyz_navigationBar.lyz_rightBtn) {
                self.lyz_navigationBar.lyz_rightStackView.addArrangedSubview(self.lyz_navigationBar.lyz_rightBtn)
            }
            return  self.lyz_navigationBar.lyz_rightBtn
        }
    }
    //右边第二个按钮
    var rightSecondBtn: UIButton {
        get {
            if !isDesofStackView(btn: self.lyz_navigationBar.lyz_rightSecondBtn) {
                self.lyz_navigationBar.lyz_rightStackView.addArrangedSubview(self.lyz_navigationBar.lyz_rightBtn)
            }
          return  self.lyz_navigationBar.lyz_rightSecondBtn
        }
        set {
            print("----")
        }
    }
    //右边第三个按钮
    var rightThirdBtn: UIButton {
        get {
            if !isDesofStackView(btn: self.lyz_navigationBar.lyz_rightThirdBtn) {
                self.lyz_navigationBar.lyz_rightStackView.addArrangedSubview(self.lyz_navigationBar.lyz_rightBtn)
            }
            return  self.lyz_navigationBar.lyz_rightThirdBtn
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configSubviews()
        if let viewControllers = self.navigationController?.viewControllers {
            if viewControllers.count > 1 {
                lyz_navigationBar.lyz_backBtn.isHidden = false
            }
        }
    }
    
        
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return lyz_statusBarType
    }
    

}

extension LYZEasyViewController {
    @objc func clickBack() {
        self.navigationController?.popViewController(animated: true)
    }
}

extension LYZEasyViewController {
    func configSubviews() {
        setupSubviews()
        measureSubviews()
    }
    
    func setupSubviews() {
        view.addSubview(lyz_navigationBar)
    }
    
    func measureSubviews() {
        lyz_navigationBar.snp.makeConstraints { make in
            make.left.top.right.equalToSuperview()
            make.height.equalTo(kNavAndStatusHeight)
        }
    }
}

extension LYZEasyViewController {
    func isDesofStackView(btn: UIButton) -> Bool {
        var flag = false
        for view in self.lyz_navigationBar.lyz_rightStackView.arrangedSubviews {
            if view.isKind(of: UIButton.self) {
                if btn == view {
                    flag = true
                }
            }
        }
        return flag
    }
}
