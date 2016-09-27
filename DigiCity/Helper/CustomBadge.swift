//
//  CustomBadge.swift
//  DigiCity
//
//  Created by Varun Kumar on 23/09/16.
//  Copyright © 2016 Varun. All rights reserved.
//

import UIKit

class CustomBadge: UITabBarItem {

//    func setMyAppCustomBadgeValue(value: String)  {
//        
//        let myAppFont = UIFont(name: "HelveticaNeue", size: CGFloat(10))
//        let myAppFontColor = UIColor(red: 208.0/255.0, green: 13.0/255.0, blue: 60.0/255.0, alpha: 1.0)
//        let myAppBackColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 1.0)
//
//        setCustomBadgeValue(value: value, withFont: myAppFont!, andFontColor: myAppFontColor, andBackgroundColor: myAppBackColor)
//        
//    }
//    
//    func setCustomBadgeValue(value: String, withFont:UIFont, andFontColor:UIColor, andBackgroundColor: UIColor)  {
//        
//        let view : UIView = UIView.value(forKey: "view") as! UIView
//        
////        let v = self .value ( forKey: "view ") as? UIView
//
//        self.badgeValue = value
//       
//        for sv in view.subviews  {
//            
//            let str :String = NSStringFromClass(sv .classForCoder)
//            if str == "_UIBadgeView" {
//                for ssv in sv.subviews {
//                    if ssv.tag == 99 {
//                        ssv.removeFromSuperview()
//                    }
//                }
//                
//                let viewContainer :UIView = UIView(frame: CGRect(x: 0, y: 0, width: sv.frame.size.width, height: sv.frame.size.height))
//                viewContainer.backgroundColor = UIColor.black
//                
//                let lbl:UILabel = UILabel(frame: CGRect(x: 0, y: 1.5, width: viewContainer.frame.size.width, height: viewContainer.frame.size.height))
//                
//                lbl.font = UIFont(name: "HelveticaNeue", size: CGFloat(10))
//                lbl.textAlignment = .center
//                lbl.text = value
//                lbl.backgroundColor = UIColor.black
////                lbl.textColor = .color
//                
//                // Fix for border
//                lbl.layer.cornerRadius = lbl.frame.size.height/2
//                lbl.layer.borderWidth = 1
//                lbl.layer.masksToBounds = true
////                lbl.layer.borderColor = CGColor
//                viewContainer.addSubview(lbl)
//                sv.backgroundColor = UIColor.clear
//                sv.addSubview(viewContainer)
//                lbl.tag = 99
//            }
//        }
//    }
}
