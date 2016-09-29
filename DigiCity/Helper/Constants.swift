//
//  Constants.swift
//  DigiCity
//
//  Created by Varun Kumar on 16/09/16.
//  Copyright © 2016 Varun. All rights reserved.
//

import Foundation
import UIKit

let MainStoryBoard  = UIStoryboard(name: "Main_StoryBoard", bundle: nil)
let TabBarDetailsStoryboard  = UIStoryboard(name: "TabBarDetails_Storyboard", bundle: nil)

let LoggedInUserDefaults = UserDefaults.standard
let  kTabBarHideShowAnimationDelay = 0.1

let AppDelegateCons = UIApplication.shared.delegate as! AppDelegate



enum Tabs {
    case kFeedTab
    case kAddPostTab
    case kCityItemTab
    case kNotificationTab
    case kEventTab
}



//enum Tabs: Int {
////    case stopped = 0
////    case running // 1
//    
//    case kFeedTab = 0
//    case kAddPostTab = 1
//    case kCityItemTab = 2
//    case kNotificationTab = 3
//    case kEventTab = 4
//}
