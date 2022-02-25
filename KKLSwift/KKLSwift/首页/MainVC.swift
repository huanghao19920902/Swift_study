//
//  MainVC.swift
//  KKLSwift
//
//  Created by 黄浩 on 2022/2/24.
//  Copyright © 2022 黄浩. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

//首页
class MainVC: UIViewController {
    
    var number : Int = 0
    var time : Timer?
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
        
    }
    
    func setupView() {
        view.addSubview(topLabel)
        view.addSubview(leftBtn)
        view.addSubview(rigntBtn)
        
        topLabel.snp.makeConstraints { make in
            make.top.left.right.equalTo(0)
            make.height.equalTo(kScreen_Height/2.0)
        }
        
        leftBtn.snp.makeConstraints { make in
            make.left.bottom.equalTo(0)
            make.top.equalTo(topLabel.snp_bottom)
            make.width.equalTo(kScreen_Width/2.0)
        }
        
        rigntBtn.snp.makeConstraints { make in
            make.top.equalTo(topLabel.snp_bottom)
            make.left.equalTo(leftBtn.snp_right)
            make.right.bottom.equalTo(0)
        }
    }
    
    @objc func leftAction(sender : UIButton){
        sender.isSelected = !sender.isSelected
        sender.isSelected ? beginTime() : stopTime()
    }
    
    @objc func rightAction(sender :UIButton){
        sender.isSelected = !sender.isSelected
        sender.isSelected ? pauseTime() : continueTime()
    }
    
    @objc func timeAction(){
        number += 1
        topLabel.text = String(number)
    }
    
    
    func beginTime() {
        time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeAction), userInfo: nil, repeats: true)
    }
    
    func stopTime() {
        topLabel.text = "0"
        time?.invalidate()
        time = nil
        number = 0
        rigntBtn.isSelected = false
    }
    
    func pauseTime(){
        if !leftBtn.isSelected {
            return
        }
        time?.invalidate()
        time = nil
    }
    
    func continueTime(){
        if !leftBtn.isSelected {
            return
        }
        beginTime()
    }
    
    
    lazy var topLabel: UILabel = {
        let label = UILabel.init()
        label.font = kfont(font: 50)
        label.textColor = .white
        label.textAlignment = .center
        label.backgroundColor = .blue
        label.text = "0"
        return label;
    }()
    
    lazy var leftBtn : UIButton = {
        let button = UIButton.init()
        button.setTitle("开始", for: .normal)
        button.setTitle("停止", for: .selected)
        button.backgroundColor = .orange
//        button.addTarget(self, action: #selector(leftAction), for: .touchUpInside)
        button.addTarget(self, action: #selector(leftAction(sender:)), for: .touchUpInside)
        return button
        
    }()
    
    lazy var rigntBtn: UIButton = {
        let button = UIButton.init()
        button.backgroundColor = .green
        button.setTitle("暂停", for: .normal)
        button.setTitle("继续", for: .selected)
        button.addTarget(self, action: #selector(rightAction(sender:)), for: .touchUpInside)
        return button
    }()
  
    
}



class MainDataVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
}
