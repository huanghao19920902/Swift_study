//
//  ViewController.swift
//  KKLSwift
//
//  Created by 黄浩 on 2018/7/4.
//  Copyright © 2018年 黄浩. All rights reserved.
//

import UIKit
import Masonry
import SnapKit

class ViewController: UIViewController {

	var acount : UITextField = UITextField.init()
	var password = UITextField.init()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		self.view.backgroundColor = UIColor.white
		
		self.acount = UITextField.init(frame: CGRect.init(x: 10, y: 100, width: 200, height: 30))
		self.acount.backgroundColor = UIColor.green
		self.acount.font = UIFont.systemFont(ofSize: 13)
		self.acount.textAlignment = NSTextAlignment.left
		self.acount.textColor = UIColor.red
		self.acount.placeholder = "请输入账号"
		self.view.addSubview(self.acount)
		
		self.acount.snp.makeConstraints { (make) in
			make.top.equalTo(self.view).offset(10)
			make.left.equalTo(self.view).offset(20)
			make.right.equalTo(self.view).offset(-30)
			make.height.equalTo(40)
		}

		self.password = UITextField.init(frame: CGRect.init(x: 10, y: 180, width: 200, height: 30))
		self.password.backgroundColor = UIColor.green
		self.password.font = UIFont.systemFont(ofSize: 13)
		self.password.textAlignment = NSTextAlignment.left
		self.password.textColor = UIColor.red
		self.password.placeholder = "输入密码"
		self.view.addSubview(self.password)
		
		
		let register = UIButton.init(frame: CGRect.init(x: 50, y: 230, width: 100, height: 30))
		register.backgroundColor = UIColor.black
		register.setTitle("登录", for: .normal)
		register.titleLabel?.font = UIFont.systemFont(ofSize: 15)
		register.setTitleColor(UIColor.white, for: .normal)
		register.addTarget(self, action: #selector(down), for: .touchUpInside)
		self.view.addSubview(register)

	}

	@objc func down(){
		print(" 按钮被点击了 ")
		
		let userCenter = RootVC()
		self.present(userCenter, animated: true, completion: nil)
		
		
	}
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

}

