//
//  LYZEasyLoadFileTool.swift
//  LYZ_EsayNavigation
//
//  Created by liuyaozong on 2021/8/28.
//

import Foundation
import UIKit

class LYZEasyLoadFileTool: NSObject {
   class func loadImage(imgName: String) -> UIImage? {
        let path =  Bundle.main.path(forResource: "resource", ofType: "bundle")
        guard let secondPath = (path?.appending("/\(imgName)")) else { return nil }
        let image = UIImage(contentsOfFile: secondPath)
        return image
    }
   
}
