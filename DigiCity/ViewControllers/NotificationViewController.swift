//
//  NotificationViewController.swift
//  DigiCity
//
//  Created by Varun Kumar on 15/09/16.
//  Copyright © 2016 Varun. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = true
        let tabArray = self.tabBarController?.tabBar.items as NSArray!
        
        for  i  in 0..<tabArray!.count {
            print("Hello tab count \(i) ")

        }
        
//        for (UITabBarItem *tabItem in self.tabBarController.tabBar.items) {
//            //        if ([tabItem.title isEqualToString: NSLocalizedString(kNotificationTabTitle, nil)]) {
//            if (tabItem.tag == 3){
//                currentBadgeValue = tabItem.badgeValue;
//            }
//        }
        
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
