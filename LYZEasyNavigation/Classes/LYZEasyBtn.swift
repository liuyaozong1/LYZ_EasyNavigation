//
//  LYZEasyBtn.swift
//  LYZ_EsayNavigation
//
//  Created by liuyaozong on 2021/8/25.
//

import UIKit

fileprivate var BUTTON_BLOCK: UInt8 = 120
public extension UIButton {
    typealias BtnClickBlock = (UIButton) -> Void
    var clickBlock: BtnClickBlock?  {
        get {
            if let block = objc_getAssociatedObject(self, &BUTTON_BLOCK) as? BtnClickBlock {
                return block
            }
            return nil
        }
        set(newValue) {
            objc_setAssociatedObject(self, &BUTTON_BLOCK, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_COPY_NONATOMIC)
            self.removeTarget(self, action: #selector(clickAction(btn:)), for: .touchUpInside)
            self.addTarget(self, action: #selector(clickAction(btn:)), for: .touchUpInside)
        }
    }
    
    func click(block _block: BtnClickBlock?) {
        self.clickBlock = _block
    }
    

    convenience init(title _title: String, font _font: CGFloat ,color _color: UIColor,click: @escaping BtnClickBlock) {
        self.init()

        self.clickBlock = click
        self.titleLabel?.font = .systemFont(ofSize: _font)
        self.setTitle(_title, for: .normal)
        self.setTitleColor(_color, for: .normal)
        self.addTarget(self, action: #selector(clickAction(btn:)), for: .touchUpInside)
    }
    
    convenience init(click: @escaping BtnClickBlock) {
        self.init()
        clickBlock = click
        self.addTarget(self, action: #selector(clickAction(btn:)), for: .touchUpInside)
    }
    
    @objc func clickAction(btn: UIButton) {
        clickBlock?(btn)
    }
}
