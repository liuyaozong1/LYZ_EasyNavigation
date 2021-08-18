//
//  LYZEasyNavigationBar.swift
//  LYZ_EsayNavigation
//
//  Created by liuyaozong on 2021/8/18.
//

import UIKit
import SnapKit
class LYZEasyNavigationBar: UIView {
    //状态栏 view
    lazy var lyz_statusBarView = UIView().apply {
        $0.backgroundColor = .clear
    }
    //导航栏 View
    lazy var lyz_navigationView = UIView().apply {
        $0.backgroundColor = .clear
    }
    //返回按钮
    lazy var lyz_backBtn = UIButton().apply {
        $0.setImage(UIImage(named: "back_icon"), for: .normal)
        $0.isHidden = true
    }
    //底部的线
    lazy var lyz_lineView = UIView().apply {
        $0.backgroundColor = RGBColor(234, 234, 234)
    }
    //背景图片
    lazy var lyz_backgroundImageView = UIImageView().apply {
        $0.contentMode = .scaleToFill
    }
    //标题容器
    lazy var lyz_titleStackView = UIStackView().apply {
        $0.alignment = .center
        $0.axis = .vertical
        $0.distribution = .fillEqually
        $0.spacing = 0
    }
    //大标题
    lazy var lyz_titleLabel = UILabel().apply {
        $0.text = "一级标题"
        $0.font = .systemFont(ofSize: 16)
        $0.textColor = .black
    }
    //小标题
    lazy var lyz_navSubtitleLabel = UILabel().apply {
        $0.text = "二级标题"
        $0.font = .systemFont(ofSize:  12)
        $0.textColor = .black
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        configSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //点击pop
    @objc open func clickBack() {
        print("点击了返回")
    }
}

extension LYZEasyNavigationBar {
    
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
        
        lyz_lineView.snp.makeConstraints { make in
            make.bottom.left.right.equalToSuperview()
            make.height.equalTo(1)
        }
    }
}
