//
//  RootVC.swift
//  KKLSwift
//
//  Created by 黄浩 on 2018/7/13.
//  Copyright © 2018年 黄浩. All rights reserved.
//

import UIKit

class RootVC: UITabBarController {

	override func viewDidLoad() {
		super.viewDidLoad()
        view.backgroundColor = .white
		self.addChrendVC(viewController: MainVC(), title: "首页", normalImane: "icon_Home", selendImage: "icon_Home")
		self.addChrendVC(viewController: MainDataVC(), title: "直播", normalImane: "icon_Live", selendImage: "icon_Home")
		self.addChrendVC(viewController: UserCenterVC(), title: "同学圈", normalImane: "icon_Social", selendImage: "icon_Home")
		self.addChrendVC(viewController: UserCenterVC(), title: "成长驿站", normalImane: "icon_Grow", selendImage: "icon_Home")
		self.addChrendVC(viewController: UserCenterVC(), title: "我的", normalImane: "icon_Mine", selendImage: "icon_Home")

		self.tabBar.backgroundImage = UIImage()
		self.tabBar.isTranslucent = false
		self.tabBar.tintColor = UIColor.init(red: 110/255.0, green: 185/255.0, blue: 43/255.0, alpha: 1)
	}
	
	func addChrendVC(viewController:UIViewController,title:String,normalImane:String,selendImage:String) {
		
		let nav = UINavigationController.init(rootViewController: viewController)
		nav.navigationBar.barTintColor = UIColor.init(red: 110/255.0, green: 185/255.0, blue: 43/255.0, alpha: 1)
        let dict : NSDictionary = [NSAttributedString.Key.foregroundColor : UIColor.white,NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 17)]
        nav.navigationBar.titleTextAttributes = dict as! [NSAttributedString.Key : AnyObject]
		
		
		viewController.navigationItem.title = title
//		viewController.hidesBottomBarWhenPushed = true
		
		nav.tabBarItem.title = title
		nav.tabBarItem.image = UIImage.init(named: normalImane)
		nav.navigationBar.isTranslucent = false
//		nav.tabBarItem.selectedImage = UIImage.init(named: selendImage)
//		nav.tabBarItem.badgeColor = UIColor.white
	
        nav.tabBarItem.setTitleTextAttributes({[NSAttributedString.Key.foregroundColor : UIColor.gray]}(), for: .normal)
        nav.tabBarItem.setTitleTextAttributes({[NSAttributedString.Key.foregroundColor : UIColor.init(red: 110/255.0, green: 185/255.0, blue: 43/255.0, alpha: 1)]}(), for: .selected)
		
        self.addChild(nav)
		
	}

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
