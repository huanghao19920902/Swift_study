//
//  LoginInputCell.swift
//  KKLSwift
//
//  Created by 黄浩 on 2018/7/28.
//  Copyright © 2018年 黄浩. All rights reserved.
//

import UIKit

class LoginInputCell: KKLBaseCell {

	
	override func layoutSubviews() {
		
		self.addSubview(inputTextField)
		self.addSubview(lineLabel)
		
		inputTextField.snp.makeConstraints { (make) in
			make.top.equalTo(0)
			make.left.equalTo(15)
			make.right.equalTo(-15)
			make.bottom.equalTo(0)
		}
		
		lineLabel.snp.makeConstraints { (make) in
			make.left.equalTo(inputTextField.snp.left)
			make.right.equalTo(inputTextField.snp.right)
			make.bottom.equalToSuperview()
			make.height.equalTo(0.5)
		}
	
	}

	
	//懒加载
	lazy var inputTextField : UITextField = {
		let input = UITextField.init()
		input.font = kfont(font: 15)
		input.textColor = RGB(R: 51, G: 51, B: 51, A: 1)
		input.clearButtonMode = .whileEditing
		return input
	}()
	
	lazy var lineLabel: UILabel = {
		let line = UILabel.init()
		line.backgroundColor = RGB(R: 238, G: 238, B: 238, A: 1)
		return line
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
