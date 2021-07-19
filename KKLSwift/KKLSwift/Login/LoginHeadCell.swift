//
//  LoginHeadCell.swift
//  KKLSwift
//
//  Created by 黄浩 on 2018/7/27.
//  Copyright © 2018年 黄浩. All rights reserved.
//

import UIKit

class LoginHeadCell: UITableViewCell {

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		self.selectionStyle = .none
				
	}
	
	override func layoutSubviews() {
		
		self.addSubview(connectionBtn)
		self.addSubview(registerBtn)
		self.addSubview(kklbackImageV)
		
		connectionBtn.snp.makeConstraints { (make) in
			make.top.equalTo(15)
			make.left.equalTo(15)
		}
		
		registerBtn.snp.makeConstraints { (make) in
			make.top.equalTo(15)
			make.right.equalTo(-15)
		}
		
		kklbackImageV.snp.makeConstraints { (make) in
			make.centerX.equalTo(self);
			make.top.equalTo(92.4)
			
		}
		
	}
	
	
	lazy var connectionBtn : UIButton = {
		
		let conn = UIButton.init()
		conn.setTitle("联系我们", for: .normal)
		conn.titleLabel?.font = kfont(font: 15)
		conn.setTitleColor(RGB(R: 51, G: 51, B: 51, A: 1), for: .normal)
		return conn
		
	}()
	
	lazy var registerBtn : UIButton = {
		
		let register = UIButton.init()
		register.titleLabel?.font = kfont(font: 15)
		register.setTitle("注册", for: .normal)
		register.setTitleColor(RGB(R: 110, G: 185, B: 43, A: 1), for: .normal)
		return register
		
	}()
	
	lazy var kklbackImageV : UIImageView = {
		
		let backimageV = UIImageView.init()
		backimageV.image = UIImage.init(named: "logo")
		return backimageV
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
