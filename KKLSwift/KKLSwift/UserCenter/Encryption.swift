//
//  Encryption.swift
//  KKLSwift
//
//  Created by 黄浩 on 2018/7/16.
//  Copyright © 2018年 黄浩. All rights reserved.
//

import Foundation

//加密
extension String {
	//MARK: - MD5
	func md5() -> String {
		let cStr = self.cString(using: String.Encoding.utf8);
		let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: 16)
		CC_MD5(cStr!,(CC_LONG)(strlen(cStr!)), buffer)
		let md5String = NSMutableString();
		for i in 0 ..< 16{
			md5String.appendFormat("%02x", buffer[i])
		}
		free(buffer)
		
		print(md5String)
		
		return md5String as String
		
	}
	//MARK: - sha1 加密
	func sha1() -> String {
		//UnsafeRawPointer
		let data = self.data(using: String.Encoding.utf8)!
		var digest = [UInt8](repeating: 0, count:Int(CC_SHA1_DIGEST_LENGTH))
		
		let newData = NSData.init(data: data)
		CC_SHA1(newData.bytes, CC_LONG(data.count), &digest)
		let output = NSMutableString(capacity: Int(CC_SHA1_DIGEST_LENGTH))
		for byte in digest {
			output.appendFormat("%02x", byte)
		}
		return output as String
	}
}

