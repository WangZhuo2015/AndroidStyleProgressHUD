//
//  ViewController.swift
//  AndroidStyleProgressHUD
//
//  Created by 王卓 on 16/4/13.
//  Copyright © 2016年 SherryTeam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let testView = ProgressHUD(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        testView.center = self.view.center
        testView.backgroundColor = UIColor.clearColor()
        view.addSubview(testView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

