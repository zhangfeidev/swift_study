//
//  FirstViewController.swift
//  UINavigationController
//
//  Created by Feliu on 16/3/10.
//  Copyright © 2016年 Feliu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        let exitButton = UIButton()
        exitButton.frame = CGRectMake(30, 40, self.view.frame.width - 60, 40)
        exitButton.setTitle("返回上一个页面", forState:UIControlState.Normal)
        exitButton.backgroundColor = UIColor.orangeColor()
        exitButton.addTarget(self, action: "exitThisViewController", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(exitButton)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func exitThisViewController(){
        self.dismissViewControllerAnimated(true, completion: nil)
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
