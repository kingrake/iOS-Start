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
        // Do any additional setup after loading the view, typically from a nib.
        let settings: UIUserNotificationSettings = UIUserNotificationSettings(forTypes: UIUserNotificationType.Badge, categories: nil)
        UIApplication.sharedApplication().registerUserNotificationSettings(settings)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Click(sender: AnyObject) {
        
        let app = UIApplication.sharedApplication()

        app.applicationIconBadgeNumber += 1

        
    }

    @IBAction func deClick(sender: AnyObject) {
        
        UIApplication.sharedApplication().applicationIconBadgeNumber -= 1
    }

}

