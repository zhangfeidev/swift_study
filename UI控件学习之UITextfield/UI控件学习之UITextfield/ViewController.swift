//
//  ViewController.swift
//  UI控件学习之UITextfield
//
//  Created by zhangfei on 16/2/29.
//  Copyright © 2016年 zhangfei. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tf1 = UITextField(frame: CGRectMake(50,30,300,40))
        tf1.placeholder = "输入框1"
        tf1.borderStyle = UITextBorderStyle.RoundedRect
        //tf1.backgroundColor = UIColor.grayColor()
        tf1.textAlignment = .Left
        tf1.becomeFirstResponder()
        self.view.addSubview(tf1)
        
        let tf2 = UITextField(frame: CGRectMake(50,80,300,40))
        tf2.placeholder = "输入框2"
        tf2.borderStyle = UITextBorderStyle.RoundedRect
        tf2.textAlignment = .Left
        tf2.delegate = self
        tf2.becomeFirstResponder()
        self.view.addSubview(tf2)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        return true
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        return textField.isFirstResponder()
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

