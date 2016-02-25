//
//  ViewController.swift
//  UI控件学习之UIImage
//
//  Created by zhangfei on 16/2/25.
//  Copyright © 2016年 zhangfei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imgv = UIImageView(frame: CGRectMake(50, 50, self.view.frame.width-100, self.view.frame.height-100))
        let img = UIImage(named:"start")
        imgv.image = img
        self.view.addSubview(imgv)
        
        //可以用UIImageView做动画
        //imgv.animationDuration = 3.0;
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

