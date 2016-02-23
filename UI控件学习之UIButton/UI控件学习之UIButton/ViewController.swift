//
//  ViewController.swift
//  UI控件学习之UIButton
//
//  Created by zhangfei on 16/2/23.
//  Copyright © 2016年 zhangfei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button1 = UIButton.init(type: UIButtonType.System)
        button1.frame = CGRectMake(50, 100, 320, 40)
        button1.backgroundColor = UIColor.orangeColor()
        button1.setTitle("click me", forState: UIControlState.Normal)
        button1.tintColor = UIColor.whiteColor()
        self.view.addSubview(button1)
        
        let button2 = UIButton.init(type: UIButtonType.System)
        button2.frame = CGRectMake(50, 150, 100, 100)
        button2.setImage(UIImage(named: "iconfont-add"), forState: UIControlState.Normal)
        self.view.addSubview(button2)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

