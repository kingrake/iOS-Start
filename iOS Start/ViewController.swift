//
//  ViewController.swift
//  iOS Start
//
//  Created by Lichen King on 15/11/2.
//  Copyright © 2015年 Lichen King. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // iOS8以后 通知要用户同意后才能使用，所以设置通知。
        let settings: UIUserNotificationSettings = UIUserNotificationSettings(forTypes: UIUserNotificationType.Badge, categories: nil)
        UIApplication.sharedApplication().registerUserNotificationSettings(settings)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Click(sender: AnyObject) {
        // 申明常量
        let app = UIApplication.sharedApplication()
        
        // 角标每点一次加一次
        app.applicationIconBadgeNumber += 1

        
    }

    @IBAction func deClick(sender: AnyObject) {
        // 角标每点一次减一次
        UIApplication.sharedApplication().applicationIconBadgeNumber -= 1
        
        // 点按钮出现cube过场动画
        let ca = CATransition()
        
        ca.type = "cube"
        
        self.view.layer.addAnimation(ca, forKey: nil)
        

        


    }

}

