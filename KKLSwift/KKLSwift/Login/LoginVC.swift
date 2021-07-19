//
//  LoginVC.swift
//  KKLSwift
//
//  Created by 黄浩 on 2018/7/27.
//  Copyright © 2018年 黄浩. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class LoginVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
		setTableView()
    }

	func setTableView(){
		self.view.addSubview(tableview);
		tableview.snp.makeConstraints({ (make) in
			make.top.left.bottom.right.equalTo(0)
		})
		tableview.register(LoginHeadCell.classForCoder(), forCellReuseIdentifier: "LoginHeadCell")
		tableview.register(LoginInputCell.classForCoder(), forCellReuseIdentifier: "LoginInputCell")
		tableview.register(LoginActionCell.classForCoder(), forCellReuseIdentifier: "LoginActionCell")
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 4
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		if indexPath.row == 0 {
			let cell = tableview.dequeueReusableCell(withIdentifier: "LoginHeadCell", for: indexPath)
			return cell
		} else if indexPath.row == 1 {
			let cell = tableview.dequeueReusableCell(withIdentifier: "LoginInputCell", for: indexPath) as! LoginInputCell
			cell.inputTextField.placeholder = "手机号/账号"
			
//			cell.inputTextField.rx.text.
			
			return cell
		} else if indexPath.row == 2 {
			let cell = tableview.dequeueReusableCell(withIdentifier: "LoginInputCell", for: indexPath) as! LoginInputCell
			cell.inputTextField.placeholder = "登录密码"
			cell.inputTextField.isSecureTextEntry = true
			return cell
		}  else {
			let cell = tableview.dequeueReusableCell(withIdentifier: "LoginActionCell", for: indexPath) as! LoginActionCell
			
			cell.loginBtn.addTarget(self, action: #selector(tapped), for: .touchUpInside);
			return cell
		}
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		if indexPath.row == 0 {
			return 207
		} else if indexPath.row == 1 || indexPath.row == 2{
			return 51
		}
		return 336
	}
	
	func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
		return 0.1
	}
	func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
		return 0.1
	}
	func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
		let headView : UIView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: kScreen_Width, height: 0.1))
		return headView;
	}
	func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
		let headView : UIView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: kScreen_Width, height: 0.1))
		return headView;
	}
	
	@objc func tapped() {
		print("212")
		let rootVC = RootVC();
		let delegate = UIApplication.shared.delegate as! AppDelegate
		delegate.window?.rootViewController = rootVC
	}
	
	lazy var tableview :UITableView = {
		let tab = UITableView.init(frame: CGRect.init(), style: .plain)
		tab.delegate = self;
		tab.dataSource = self;
		tab.showsVerticalScrollIndicator = false
		tab.keyboardDismissMode = .onDrag
		tab.separatorStyle = .none
//		tab.backgroundColor = UIColor.red
		return tab
	}()
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
