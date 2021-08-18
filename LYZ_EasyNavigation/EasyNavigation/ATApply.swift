//
//  Apply.swift
//  QChat
//
//  Created by 刘耀宗 on 2020/6/9.
//  Copyright © 2020 刘耀宗. All rights reserved.
//

import Foundation
import UIKit
public protocol Apply {}

extension Apply where Self: Any {
    @discardableResult func apply(_ block: (Self) -> Void) -> Self {
        block(self)
        return self
    }
}

extension Apply where Self: AnyObject {
    @discardableResult func apply(_ block: (Self) -> Void) -> Self {
        block(self)
        return self
    }
}

extension NSObject: Apply {}
extension CGPoint: Apply {}
extension CGRect: Apply {}
extension CGSize: Apply {}
extension CGVector: Apply {}
extension UIEdgeInsets: Apply {}
extension UIOffset: Apply {}
extension UIRectEdge: Apply {}
extension Array: Apply {}
extension Dictionary: Apply {}
extension Set: Apply {}
