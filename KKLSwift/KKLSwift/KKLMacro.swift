//
//  KKLMacro.swift
//  KKLSwift
//
//  Created by 黄浩 on 2018/7/27.
//  Copyright © 2018年 黄浩. All rights reserved.
//

import UIKit

/// 当前app信息
let GetAppInfo = Bundle.main.infoDictionary
//objectForInfoDictionaryKey("CFBundleShortVersionString")

/// 当前app版本号
let GetAppCurrentVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"]

/// 获取设备系统号
//let GetSystemVersion = UIDevice.currentDevice().systemVersion

let kScreen_Height = UIScreen.main.bounds.size.height;

let kScreen_Width = UIScreen.main.bounds.size.width;


func kfont(font:CGFloat) -> UIFont {
	return UIFont.systemFont(ofSize: font)
}

//RGB 16进制转换
func UIColorFromRGB(rgbValue: UInt) -> UIColor {
	return UIColor(
		red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
		green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
		blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
		alpha: CGFloat(1.0)
	)
}
func RGB(R:CGFloat,G:CGFloat,B:CGFloat,A:CGFloat) -> UIColor{
	return UIColor.init(red: R/255.0, green: G/255.0, blue: B/255.0, alpha: A)
}
