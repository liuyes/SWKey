//
//  ViewController.swift
//  SWKey
//
//  Created by liuyes on 16/4/1.
//  Copyright © 2016年 liuyes. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    var imageView: UIImageView?
    var okButton: UIButton?
    var images: NSArray = [[UIImage(named:"otp_number_zero_fuzzy")!, UIImage(named:"otp_number_zero")!], [UIImage(named:"otp_number_one_fuzzy")!, UIImage(named:"otp_number_one")!], [UIImage(named:"otp_number_two_fuzzy")!, UIImage(named:"otp_number_two")!], [UIImage(named:"otp_number_three_fuzzy")!, UIImage(named:"otp_number_three")!], [UIImage(named:"otp_number_four_fuzzy")!, UIImage(named:"otp_number_four")!], [UIImage(named:"otp_number_five_fuzzy")!, UIImage(named:"otp_number_five")!], [UIImage(named:"otp_number_six_fuzzy")!, UIImage(named:"otp_number_six")!], [UIImage(named:"otp_number_seven_fuzzy")!, UIImage(named:"otp_number_seven")!], [UIImage(named:"otp_number_eight_fuzzy")!, UIImage(named:"otp_number_eight")!], [UIImage(named:"otp_number_nine_fuzzy")!, UIImage(named:"otp_number_nine")!]]
    var srcImages: NSArray = [UIImage(named:"otp_number_zero")!, UIImage(named:"otp_number_one")!, UIImage(named:"otp_number_two")!, UIImage(named:"otp_number_three")!, UIImage(named:"otp_number_four")!, UIImage(named:"otp_number_five")!, UIImage(named:"otp_number_six")!, UIImage(named:"otp_number_seven")!, UIImage(named:"otp_number_eight")!, UIImage(named:"otp_number_nine")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //初始化UI
        initSubView()
    
    }

    func initSubView() {
        if (imageView == nil) {
            imageView = UIImageView(frame: CGRect(x: (Width_Screen-218)/2, y: 100, width: 218, height: 68))
            imageView?.image = UIImage(named: "otp_number_bg")
            self.view.addSubview(imageView!)
        }
        
        if (okButton == nil) {
            okButton = UIButton(type: UIButtonType.Custom)
            okButton?.setTitle("重新生成", forState: UIControlState.Normal)
            okButton?.addTarget(self, action: #selector(self.randNum), forControlEvents: UIControlEvents.TouchUpInside)
            okButton?.frame = CGRectMake((Width_Screen-100)/2, 260, 100, 40);
            okButton?.setTitleColor(UIColor.grayColor(), forState: UIControlState.Normal)
            okButton?.layer.cornerRadius = 8
            okButton?.layer.masksToBounds = true
            okButton?.titleLabel?.font = UIFont.systemFontOfSize(16)
            self.view.addSubview(okButton!)
        }
        
        randNum()
    }

    func randNum() -> Void {
        //移除所有的子视图
        imageView?.subviews.forEach {$0.removeFromSuperview()}
        
        for i in 0 ..< 6 {
            let x = Int(arc4random() % 10);
            let frame = CGRectMake(12+CGFloat(i)*33, 10, 29, 39)
            createImages(frame, index: x)
        }
        
        let centerImageView = UIImageView(frame: CGRectMake(9, 31, 200, 1))
        centerImageView.image = UIImage(named: "otp_centerline")
        imageView?.addSubview(centerImageView)
    }
    
    func createImages(rect: CGRect, index: NSInteger) -> Void {
        let numImageView = UIImageView(frame: rect)
        numImageView.animationImages = images[index] as? [UIImage]
        numImageView.contentMode = UIViewContentMode.ScaleAspectFit
        numImageView.animationDuration = 0.75
        numImageView.animationRepeatCount = 1
        numImageView.image = srcImages[index] as? UIImage
        numImageView.startAnimating()
        //添加控件
        imageView?.addSubview(numImageView)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

