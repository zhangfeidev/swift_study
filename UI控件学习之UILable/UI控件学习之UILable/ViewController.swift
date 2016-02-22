//
//  ViewController.swift
//  UI控件学习之UILable
//
//  Created by zhangfei on 16/2/22.
//  Copyright © 2016年 zhangfei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lable1 = UILabel(frame:CGRectMake(10,30,400,40))
        lable1.text = "swift"
        lable1.textAlignment = NSTextAlignment.Center
        lable1.backgroundColor = UIColor.grayColor()
        self.view.addSubview(lable1)
        
        let lable2 = UILabel(frame: CGRectMake(10,80,400,40))
        lable2.text = "iOS"
        lable2.textAlignment = .Left
        lable2.backgroundColor = .grayColor()
        self.view.addSubview(lable2)

        let lable3 = UILabel(frame: CGRectMake(10,130,400,40))
        lable3.text = "你好，我叫张飞，英文名是Feliu！来自中国贵州，现在是一名即将毕业的大学生，正在学习iOS开发！"
        lable3.backgroundColor = .grayColor()
        self.view.addSubview(lable3)
        
        let lable4 = UILabel(frame: CGRectMake(10,180,400,40))
        lable4.text = "你好，我叫张飞，英文名是Feliu！来自中国贵州，正在学习iOS开发！"
        lable4.backgroundColor = .grayColor()
        lable4.adjustsFontSizeToFitWidth = true
        self.view.addSubview(lable4)
        
        let lable5 = UILabel(frame: CGRectMake(10,230,400,40))
        lable5.text = "你好，我叫张飞，英文名是Feliu！来自中国贵州，正在学习iOS开发！"
        lable5.backgroundColor = .grayColor()
        lable5.adjustsFontSizeToFitWidth = true
        lable5.minimumScaleFactor = 0.8
        self.view.addSubview(lable5)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

