//
//  ViewController.swift
//  UI控件学习之UIScrollView
//
//  Created by Feliu on 16/3/16.
//  Copyright © 2016年 Feliu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scroll = UIScrollView(frame: CGRectMake(10,40,400,300))
        scroll.backgroundColor = UIColor.grayColor()
        scroll.delegate = self
        self.view.addSubview(scroll)
        
        let img = UIImage(named: "myWorkDesktop")
        let imgV = UIImageView(image: img)
        scroll.addSubview(imgV)
        
        scroll.contentSize = img!.size
        //滚动条样式
        scroll.indicatorStyle = .Black
        //滚动条的显示与否
        scroll.showsHorizontalScrollIndicator = false
        //缩放
        scroll.minimumZoomScale = 0.5
        scroll.maximumZoomScale = 2.0
        
        //UIScrollView可以做引导页，分栏控制等
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return scrollView.subviews[0]
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

