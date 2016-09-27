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
    

}
