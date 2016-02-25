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
        button2.setBackgroundImage(UIImage(named: "iconfont-add"), forState: UIControlState.Normal)
        button2.addTarget(self, action: "clickButton2", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button2)
        
        let button3 = UIButton.init(type: UIButtonType.System)
        button3.frame = CGRectMake(160, 150, 100, 100)
        button3.setTitle("加号", forState: UIControlState.Normal)
        button3.setImage(UIImage(named: "iconfont-add"), forState: UIControlState.Normal)
        button3.addTarget(self, action: "clickButton3", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button3)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func clickButton2(){
        print("button2 is clicked!")
        self.view.backgroundColor = UIColor.whiteColor()
    }
    
    func clickButton3(){
        print("button3 is clicked!")
        self.view.backgroundColor = UIColor.grayColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

