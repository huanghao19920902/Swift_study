//
//  GuideVC.swift
//  KKLSwift
//
//  Created by 黄浩 on 2021/10/8.
//  Copyright © 2021 黄浩. All rights reserved.
//

import UIKit

class GuideVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let bigScrollView : UIScrollView = UIScrollView()
        bigScrollView.frame = CGRect.init(x: 0, y: 0, width: kScreen_Width, height: kScreen_Height)
        self.view.addSubview(bigScrollView)
        bigScrollView.contentSize = CGSize.init(width: kScreen_Width * 2, height: kScreen_Height);
        bigScrollView.showsVerticalScrollIndicator = false
        bigScrollView.showsHorizontalScrollIndicator = false
        bigScrollView.isPagingEnabled = true
        for index in 0...1 {
            let imageV : UIImageView = UIImageView()
            imageV.frame = CGRect.init(x: (kScreen_Width * CGFloat(index)), y: 0, width: kScreen_Width, height: kScreen_Height);
            bigScrollView.addSubview(imageV)
            imageV.isUserInteractionEnabled = true;
            if (iPhone_3_5) {
                imageV.image = UIImage.init(named: String(format: "guide_4_%d", index + 1))
            } else if (iPhone_4_0) {
                imageV.image = UIImage.init(named: String(format: "guide_5_%d", index + 1))

            } else if (iPhone_4_7) {
                imageV.image = UIImage.init(named: String(format: "guide_6_%d", index + 1))

//                imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"guide_6_%d", i + 1]];
            } else if (iPhone_5_5) {
                imageV.image = UIImage.init(named: String(format: "guide_6p_%d", index + 1))

            }else if (iPhone_X) {
                imageV.image = UIImage.init(named: String(format: "guide_x_%d", index + 1))

            } else {
                imageV.image = UIImage.init(named: String(format: "guide_ipad_%d", index + 1))
            }
            
            if (index == 1) {
                let tapGest : UITapGestureRecognizer = UITapGestureRecognizer()
//                tapGest .addTarget(self, action: #selector(tapped))
                tapGest.addTarget(self, action: #selector(tapped))
                imageV.addGestureRecognizer(tapGest)
            }
        }
        
    }
    
    @objc func tapped() {
        let keyWindow = UIApplication.shared.keyWindow
        keyWindow?.rootViewController = LoginVC()
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
