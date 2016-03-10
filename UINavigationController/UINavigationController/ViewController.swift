//
//  ViewController.swift
//  UINavigationController
//
//  Created by Feliu on 16/3/9.
//  Copyright © 2016年 Feliu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //加载当前视图控制器中的视图
    override func loadView() {
        super.loadView()
        print("loadView")
    }
    //视图加载完成后接着调用的方法
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view, typically from a nib.
    }
    //视图将要出现时候调用的方法
    override func viewWillAppear(animated: Bool) {
        print("viewWillAppear")
    }
    //视图已经出现的时候调用的方法
    override func viewDidAppear(animated: Bool) {
        print("viewDidAppear")
    }
    //视图即将消失调用的方法
    override func viewWillDisappear(animated: Bool) {
        print("viewWillDisappear")
    }
    //视图消失的时候调用的方法
    override func viewDidDisappear(animated: Bool) {
        print("viewDidDisappear")
    }
    //内存吃紧的时候调用的方法
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //执行顺序：
    //首次进入该页面：loadView --> viewDidLoad --> viewWillAppear --> viewDidAppear --> viewWillDisappear --> viewDidDisappear
    //视图创建好以后，再次回到该视图的时候：viewWillAppear --> viewDidAppear --> viewWillDisappear --> viewDidDisappear
    @IBAction func presentOneViewController(sender: UIButton) {
        let presentVC = FirstViewController()
        //添加动画
        presentVC.modalTransitionStyle = .FlipHorizontal
        self.presentViewController(presentVC, animated: true, completion:nil)
    }

}

