//
//  SecondViewController.swift
//  UINavigationController
//
//  Created by Feliu on 16/3/10.
//  Copyright © 2016年 Feliu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var otherPageVale:String?
    
    var changeVCLableTitleClosuer:((title:String) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second Page"
        self.view.backgroundColor = UIColor.whiteColor()
        let lable = UILabel()
        lable.frame = CGRectMake(100, 100, self.view.frame.width-40, 60)
        lable.text = "这是第二个页面"
        self.view.addSubview(lable)
        
        let lable2 = UILabel()
        lable2.frame = CGRectMake(100, 140, self.view.frame.width-40, 60)
        lable2.text = otherPageVale
        self.view.addSubview(lable2)
        
        let btn = UIButton();
        btn.frame = CGRectMake(100, 200, 150, 30)
        btn.backgroundColor = UIColor.orangeColor()
        btn.setTitle("点击反向传值", forState: .Normal)
        btn.addTarget(self, action: "clickWithOtherPageValue", forControlEvents: .TouchUpInside)
        self.view.addSubview(btn)
        // Do any additional setup after loading the view.
    }

    func clickWithOtherPageValue(){
        changeVCLableTitleClosuer?(title: "传回去的值：hi ！我来自第二个页面")
        self.navigationController?.popViewControllerAnimated(true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
