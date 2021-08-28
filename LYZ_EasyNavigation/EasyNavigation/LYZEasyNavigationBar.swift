//
//  LYZEasyNavigationBar.swift
//  LYZ_EsayNavigation
//
//  Created by liuyaozong on 2021/8/18.
//

import UIKit
import SnapKit
open class LYZEasyNavigationBar: UIView {
    //状态栏 view
    public lazy var lyz_statusBarView = UIView().apply {
        $0.backgroundColor = .clear
    }
    //导航栏 View
    public lazy var lyz_navigationView = UIView().apply {
        $0.backgroundColor = .clear
    }
    //返回按钮
    public lazy var lyz_backBtn = UIButton().apply {
        $0.setImage(LYZEasyNavigationConfig.navBackButtonImage, for: .normal)
        $0.isHidden = true
    }
    //底部的线
    public lazy var lyz_lineView = UIView().apply {
        $0.backgroundColor = LYZEasyNavigationConfig.bottomLineColor
    }
    //背景图片
    public lazy var lyz_backgroundImageView = UIImageView().apply {
        $0.contentMode = .scaleToFill
    }
    //标题容器
    public lazy var lyz_titleStackView = UIStackView().apply {
        $0.alignment = .center
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.spacing = 0
    }
    //大标题
    public lazy var lyz_titleLabel = UILabel().apply {
        $0.text = "一级标题"
        $0.font = LYZEasyNavigationConfig.titleFont
        $0.textColor = LYZEasyNavigationConfig.titleColor
    }
    //小标题
    public lazy var lyz_navSubtitleLabel = UILabel().apply {
        $0.text = "二级标题"
        $0.font = LYZEasyNavigationConfig.subTitleFont
        $0.textColor = LYZEasyNavigationConfig.subTitleColor
    }
    //右边的 stackView
    public lazy  var lyz_rightStackView = UIStackView().apply {
        $0.alignment = .center
        $0.axis = .horizontal
        $0.distribution = .equalSpacing
        $0.spacing = LYZEasyNavigationConfig.barButtonItemPadding
        $0.backgroundColor = .clear
    }
    //右边的第一个按钮
    public lazy var lyz_rightBtn: BarButton = {
        let btn = BarButton()
        return btn
    }()
    //右边的第二个按钮
    public lazy var lyz_rightSecondBtn: BarButton =  {
        let btn = BarButton()
        return btn
    }()
    //右边的第三个按钮
    public lazy var lyz_rightThirdBtn: BarButton =  {
        let btn = BarButton()
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = LYZEasyNavigationConfig.navBackgroundColor
        lyz_backgroundImageView.image = LYZEasyNavigationConfig.navBackgroundImage
        lyz_backgroundImageView.contentMode = LYZEasyNavigationConfig.navBackgroundImageMode
        configSubviews()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //点击pop
    @objc open func clickBack() {
        print("点击了返回")
    }
}

extension LYZEasyNavigationBar {
   public class  BarButton: UIButton {
        override init(frame: CGRect) {
            super.init(frame: frame)
            self.backgroundColor = .clear
            self.titleLabel?.font =  LYZEasyNavigationConfig.barButtonItemFont
            self.setTitleColor(LYZEasyNavigationConfig.barButtonItemColor, for: .normal)
            self.backgroundColor = LYZEasyNavigationConfig.barButtonItemBackgroundColor
        }
        
        required public init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
}

extension LYZEasyNavigationBar {
    func configSubviews() {
        setupSubviews()
        measureSubviews()
    }
    
    func setupSubviews() {
        addSubview(lyz_backgroundImageView)
        addSubview(lyz_statusBarView)
        addSubview(lyz_navigationView)
        lyz_navigationView.addSubview(lyz_backBtn)
        lyz_navigationView.addSubview(lyz_titleStackView)
        lyz_titleStackView.addArrangedSubview(lyz_titleLabel)
        lyz_navigationView.addSubview(lyz_lineView)
        lyz_navigationView.addSubview(lyz_navSubtitleLabel)
        lyz_navigationView.addSubview(lyz_rightStackView)
        
    }
    
    func measureSubviews() {
        
        lyz_backgroundImageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        lyz_statusBarView.snp.makeConstraints { make in
            make.left.top.right.equalToSuperview()
            make.height.equalTo(StatusBarHeight())
        }
        
        lyz_navigationView.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(lyz_statusBarView.snp.bottom)
            make.height.equalTo(NavBarHeight())
        }
        
        lyz_backBtn.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(10)
            make.width.height.equalTo(20)
        }
        
        lyz_titleStackView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.top.bottom.equalToSuperview()
        }
        lyz_titleStackView.setContentHuggingPriority(.required, for: .horizontal)
        lyz_titleStackView.setContentCompressionResistancePriority(.required, for: .horizontal)
        
        lyz_rightStackView.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-10)
            make.centerY.equalToSuperview()
        }
        
        lyz_lineView.snp.makeConstraints { make in
            make.bottom.left.right.equalToSuperview()
            make.height.equalTo(LYZEasyNavigationConfig.bottomLineHeight)
        }
    }
}
