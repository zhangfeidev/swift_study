//
//  ViewController.swift
//  第一个UI项目
//
//  Created by zhangfei on 16/2/22.
//  Copyright © 2016年 zhangfei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var redView:UIView?
    var pictureView:UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView = UIView(frame: CGRectMake(20,50,100,100));
        redView!.backgroundColor = UIColor.redColor();
        self.view.addSubview(redView!);
        
        //使用图片创建颜色，图片会平铺
        pictureView = UIView(frame: CGRectMake(20,200,100,100))
        pictureView!.backgroundColor = UIColor(patternImage: UIImage(named:"swift.png")!)
        self.view.addSubview(pictureView!)
        let count = self.view.subviews.count
        print("self.view的子视图的个数：\(count)")
        print(self.view.subviews)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        UIView.animateWithDuration(0.5, delay: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.redView!.frame = CGRectMake(20, 50, 120, 120)
            self.redView!.backgroundColor = UIColor.orangeColor()
            }) { (finished) -> Void in
                print("redView动画完成！")
        }
    }


}
