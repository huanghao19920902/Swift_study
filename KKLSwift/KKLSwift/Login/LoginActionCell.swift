//
//  LoginActionCell.swift
//  KKLSwift
//
//  Created by 黄浩 on 2018/7/28.
//  Copyright © 2018年 黄浩. All rights reserved.
//

import UIKit

class LoginActionCell: KKLBaseCell {

	
	override func layoutSubviews() {
		
		self.addSubview(forgetAccount)
		self.addSubview(forgetPassword)
		self.addSubview(loginBtn)
		
		forgetAccount.snp.makeConstraints { (make) in
			make.top.equalTo(15)
			make.left.equalTo(15)
		}
		
		forgetPassword.snp.makeConstraints { (make) in
			make.top.equalTo(15)
			make.right.equalTo(-15)
		}
		
		loginBtn.snp.makeConstraints { (make) in
			make.top.equalTo(forgetAccount.snp.bottom).offset(35)
			make.left.equalTo(15);
			make.right.equalTo(-15)
			make.height.equalTo(44)
		}
		
	}
	
	
	lazy var forgetAccount : UIButton = {
		
		let fAccount = UIButton.init()
		fAccount.titleLabel?.font = kfont(font: 14)
		fAccount.setTitleColor(RGB(R: 110, G: 185, B: 43, A: 1), for: .normal)
		fAccount.setTitle("忘记账号", for: .normal)
		return fAccount
	}()
	
	lazy var forgetPassword : UIButton = {
		
		let fPassword = UIButton.init()
		fPassword.titleLabel?.font = kfont(font: 14)
		fPassword.setTitleColor(RGB(R: 110, G: 185, B: 43, A: 1), for: .normal)
		fPassword.setTitle("忘记密码", for: .normal)
		return fPassword
		
	}()
	
	lazy var loginBtn : UIButton = {
		
		let login = UIButton.init()
		login.titleLabel?.font = kfont(font: 17)
		login.setTitle("登录", for: .normal)
		login.backgroundColor = RGB(R: 110, G: 185, B: 43, A: 1)
		login.layer.cornerRadius = 4
		login.clipsToBounds = true
		return login
	}()
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
