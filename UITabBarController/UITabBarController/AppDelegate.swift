//
//  AppDelegate.swift
//  UITabBarController
//
//  Created by Feliu on 16/3/13.
//  Copyright © 2016年 Feliu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        let tabbar = UITabBarController()
        let vc1 = ViewController()
        let vc2 = SecondViewController()
        let vc3 = ThreeViewController()
        let vc4 = ForthViewController()
        vc1.tabBarItem.title = "首页"
        vc2.tabBarItem.title = "通讯录"
        vc3.tabBarItem.title = "发现"
        vc4.tabBarItem.title = "我"
        var vc1Image = UIImage(named: "iconfont-shouye")
        vc1Image = vc1Image?.imageWithRenderingMode(.AlwaysOriginal)
        vc1.tabBarItem.image = vc1Image
        vc1.tabBarItem.badgeValue = "99+"
        var vc2Image = UIImage(named: "iconfont-tongxunlu")
        vc2Image = vc2Image?.imageWithRenderingMode(.AlwaysOriginal)
        vc2.tabBarItem.image = vc2Image
        var vc3Image = UIImage(named: "iconfont-faxian")
        vc3Image = vc3Image?.imageWithRenderingMode(.AlwaysOriginal)
        vc3.tabBarItem.image = vc3Image
//        var vc4Image = UIImage(named: "iconfont-wo")
//        vc4Image = vc4Image?.imageWithRenderingMode(.AlwaysOriginal)
//        vc4.tabBarItem.image = vc4Image
        //用系统的图标
        let vc4Item = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Search, tag: 400)
        vc4Item.title = "书签"//没用
        vc4.tabBarItem = vc4Item
        tabbar.viewControllers = [vc1,vc2,vc3,vc4]
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.orangeColor()], forState: .Normal)
        
        self.window?.rootViewController = tabbar
        self.window?.backgroundColor = UIColor.whiteColor()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

