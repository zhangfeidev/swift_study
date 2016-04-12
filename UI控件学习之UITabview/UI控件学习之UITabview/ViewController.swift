//
//  ViewController.swift
//  UI控件学习之UITabview
//
//  Created by Feliu on 16/4/11.
//  Copyright © 2016年 Feliu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var _tabview:UITableView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        _tabview = UITableView(frame: self.view.bounds, style:.Plain)
        _tabview?.delegate = self;
        _tabview?.dataSource = self;
        self.view.addSubview(_tabview!)
        
        //tabview的头视图，定义的y,width都是没有作用的,x会起作用
        let headerView = UIView(frame:CGRectMake(0,0,0,40))
        headerView.backgroundColor = UIColor.purpleColor()
        _tabview?.tableHeaderView = headerView
        
        //tabview的为视图，定义的y,width都是没有作用的,x会起作用
        let footerView = UIView(frame:CGRectMake(0,0,0,40))
        footerView.backgroundColor = UIColor.orangeColor()
        _tabview?.tableFooterView = footerView
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    // MARK: - UITabviewDelegate and UITabviewDataSource
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellid = "cellid"
        var cell = tableView.dequeueReusableCellWithIdentifier(cellid)
        if cell == nil {
            cell = UITableViewCell(style:.Default, reuseIdentifier: cellid)
        }
        cell!.textLabel?.text = "test";
        return cell!;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }

}

