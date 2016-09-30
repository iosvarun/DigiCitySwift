//
//  AppUtility.swift
//  DigiCity
//
//  Created by Varun Kumar on 15/09/16.
//  Copyright © 2016 Varun. All rights reserved.
//

import UIKit

class AppUtility: NSObject {
    
   class func isUserAvailable () -> Bool {
        let accessToken: String?
        accessToken = getAccessToken() as? String
        guard let _ = accessToken else {
            return false
        }
        return accessToken!.characters.count > 0 ? true : false
    }
    
   class func getAccessToken () -> AnyObject{
        let access_token = LoggedInUserDefaults.string(forKey: "access_token")
        return access_token as AnyObject
    }
    

    class func hideTabBar(animated:Bool) {
        if animated {
            UIView.animate(withDuration: 0.5, delay: kTabBarHideShowAnimationDelay, options: [.repeat, .curveEaseOut, .autoreverse], animations: {
                
                var biggerFrame: CGRect = (AppDelegateCons.mainTabBarController?.view.frame)!
                let bounds = UIScreen.main.bounds
                var height = bounds.size.height
                height = +49
                biggerFrame.size.height = height
                AppDelegateCons.mainTabBarController?.view.frame = biggerFrame
                }, completion: nil)
        }
        else {
            
            var biggerFrame: CGRect = (AppDelegateCons.mainTabBarController?.view.frame)!
            let bounds = UIScreen.main.bounds
            var tabBarControllerHeight = bounds.size.height
            tabBarControllerHeight = +49
            biggerFrame.size.height = tabBarControllerHeight
            AppDelegateCons.mainTabBarController?.view.frame = biggerFrame
            
        }
    }
    
    
    class func showTabBar(animated:Bool) {
        if animated {
            UIView.animate(withDuration: 0.5, delay: kTabBarHideShowAnimationDelay, options: [.repeat, .curveEaseOut, .autoreverse], animations: {
                var biggerFrame: CGRect = (AppDelegateCons.mainTabBarController?.view.frame)!
                let bounds = UIScreen.main.bounds
                biggerFrame.size.height = bounds.size.height - biggerFrame.midY
                AppDelegateCons.mainTabBarController?.view.frame = biggerFrame
                }, completion: nil)
        }
        else{
            var biggerFrame: CGRect = (AppDelegateCons.mainTabBarController?.view.frame)!
            let bounds = UIScreen.main.bounds
            biggerFrame.size.height = bounds.size.height
            AppDelegateCons.mainTabBarController?.view.frame = biggerFrame
        }
    }
    
    
}
