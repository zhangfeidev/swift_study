//
//  SecondViewController.swift
//  UINavigationController
//
//  Created by Feliu on 16/3/10.
//  Copyright © 2016年 Feliu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Second Page"
        self.view.backgroundColor = UIColor.whiteColor()
        let lable = UILabel()
        lable.frame = CGRectMake(100, 100, self.view.frame.width-40, 60)
        lable.text = "这是第二个页面"
        self.view.addSubview(lable)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
