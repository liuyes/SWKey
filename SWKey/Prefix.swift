//
//  Prefix.swift
//  SWKey
//
//  Created by liuyes on 16/4/1.
//  Copyright © 2016年 liuyes. All rights reserved.
//

import UIKit
//#define Width_Screen ([UIScreen mainScreen].bounds.size.width)
//#define Height_Screen ([UIScreen mainScreen].bounds.size.height)
let Width_Screen = UIScreen.mainScreen().bounds.size.width
let Height_Screen = UIScreen.mainScreen().bounds.size.height
func x(object: UIView) -> CGFloat {
    return object.frame.origin.x
}
func y(object: UIView) -> CGFloat {
    return object.frame.origin.y
}
func width(object: UIView) -> CGFloat {
    return object.frame.size.width
}
func height(object: UIView) -> CGFloat {
    return object.frame.size.height
}