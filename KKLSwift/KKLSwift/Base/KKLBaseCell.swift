//
//  KKLBaseCell.swift
//  KKLSwift
//
//  Created by 黄浩 on 2018/7/28.
//  Copyright © 2018年 黄浩. All rights reserved.
//

import UIKit

class KKLBaseCell: UITableViewCell {

	
	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		self.selectionStyle = .none
		self.backgroundColor = UIColor.white
	}
    
    
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
