//
//  UserCenterCell.swift
//  KKLSwift
//
//  Created by 黄浩 on 2018/7/5.
//  Copyright © 2018年 黄浩. All rights reserved.
//

import UIKit

class UserCenterCell: UITableViewCell {
	
	var sinnImageV = UIImageView()
	var title = UILabel()
	var cutLine = UILabel()
	
	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		self.selectionStyle = .none
		self.createUI()
		
		
		
	}
	
	func createUI() {
		
		sinnImageV = UIImageView.init()
		sinnImageV.frame = CGRect.init(x: 20, y: 12, width: 25, height: 25)
		self.addSubview(sinnImageV);
		
		title = UILabel.init();
		title.frame = CGRect.init(x: 60, y: 15, width: 250, height: 22)
		title.font = UIFont.systemFont(ofSize: 14)
		title.textColor = UIColor.init(red: 51/255.0, green: 51/255.0, blue: 51/255.0, alpha: 1)
		self.addSubview(title)
		
		cutLine = UILabel.init()
		cutLine.frame = CGRect.init(x: 60, y: 49, width: self.frame.size.width - 60, height: 0.5)
		cutLine.backgroundColor = UIColor.init(red: 237/255.0, green: 237/255.0, blue: 237/255.0, alpha: 1)
		self.addSubview(cutLine)
		
	}
	
	
	func setData(model : UserCenterModel) {
		sinnImageV.image = UIImage.init(named: model.imageName)
		title.text = model.titleContent
		
	}
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
