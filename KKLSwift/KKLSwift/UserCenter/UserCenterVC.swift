//
//  UserCenterVC.swift
//  KKLSwift
//
//  Created by 黄浩 on 2018/7/5.
//  Copyright © 2018年 黄浩. All rights reserved.
//

import UIKit

class UserCenterVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
	
	var tableView:UITableView?
	
	var dataSour = NSArray()
	override func viewDidLoad() {
		super.viewDidLoad()
		

		let str : String = "nihao"
		let md5Str = str.md5()
		print("----\(md5Str)-----\(str)")
		self.view.backgroundColor = UIColor.init(red: 237/255.0, green: 237/255.0, blue: 237/255.0, alpha: 1)
		let filePath = Bundle.main.path(forResource: "Usercenter.plist", ofType: nil)
		let webs:NSDictionary = NSDictionary(contentsOfFile: filePath!)!
		let object  = webs.object(forKey: "date")
		if object is NSArray {
			dataSour = object as! NSArray
		}
		tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height), style: .grouped)
		tableView?.delegate = self;
		tableView?.dataSource = self;
		tableView?.separatorStyle = .none
		self.view.addSubview(tableView!)
		
		tableView?.snp.makeConstraints({ (make) in
			make.top.left.bottom.right.equalTo(0)
		})
		
		tableView?.register(UserCenterCell.classForCoder(), forCellReuseIdentifier: "cell")
	}
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return dataSour.count
	}
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		let sectionArray = dataSour.object(at: section) as! NSArray
		return sectionArray.count
		
	}
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return 50
	}
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell1:UserCenterCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! UserCenterCell
		let model : UserCenterModel = UserCenterModel.init()
		let sectionArray = dataSour.object(at: indexPath.section) as! NSArray
		let dataDic = sectionArray.object(at: indexPath.row) as! NSDictionary
		let imageName : String = dataDic.object(forKey: "imagename") as! String
		model.imageName = imageName
		model.titleContent = dataDic.object(forKey: "titlecontent") as! String
		cell1.setData(model: model)
		cell1.cutLine.isHidden = indexPath.row + 1 == sectionArray.count ? true : false
		return cell1
	}
	
	func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
		return 10
	}
	func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
		let head = UIView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: 10))
		head.backgroundColor = UIColor.init(red: 237/255.0, green: 237/255.0, blue: 237/255.0, alpha: 1)
		return head
	}
	func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
		let head = UIView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: 10))
		head.backgroundColor = UIColor.init(red: 237/255.0, green: 237/255.0, blue: 237/255.0, alpha: 1)
		return head
	}
	func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
		return 0.1
	}
}
