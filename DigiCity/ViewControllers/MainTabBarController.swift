//
//  MainTabBarController.swift
//  DigiCity
//
//  Created by Varun Kumar on 15/09/16.
//  Copyright © 2016 Varun. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController, UITabBarControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        addTabs()
        setTabBarAppearance()
        
        // Do any additional setup after loading the view.
    }
    
    // MARK: add all Custom view-controllers on tab bar..
    func addTabs() {
        //        var array1: NSArray? = NSArray(objects: createCityTab(),createEventTab())
        let array = [createFeedTab(),createEventTab(),createCityTab(),createNotificationTab(),createAddPostTab()]
        self.viewControllers = array
    }
    
    // MARK: create navigation view-controllers on all viewcontrollers..
    func createFeedTab() -> FeedNavigationController {
        let objFeedController = MainStoryBoard.instantiateViewController(withIdentifier: "FeedViewController") as! FeedViewController
        
        let feedNavigationController: FeedNavigationController = FeedNavigationController(rootViewController: objFeedController)
        feedNavigationController.delegate = self
        return feedNavigationController
    }
    
    func createEventTab() -> EventNavigationController {
        let objEventController = MainStoryBoard.instantiateViewController(withIdentifier: "EventViewController") as! EventViewController
        let eventNavigationController: EventNavigationController = EventNavigationController(rootViewController: objEventController)
        eventNavigationController.delegate = self
        return eventNavigationController
    }
    func createCityTab() -> CityNavigationController {
        let objEventController = MainStoryBoard.instantiateViewController(withIdentifier: "CityItemViewController") as! CityItemViewController
        let cityNavigationController: CityNavigationController = CityNavigationController(rootViewController: objEventController)
        cityNavigationController.delegate = self
        return cityNavigationController
    }
    func createNotificationTab() -> NotificationNavigationController {
        let objNotificationController = MainStoryBoard.instantiateViewController(withIdentifier: "NotificationViewController") as! NotificationViewController
        let notificationNavigationController: NotificationNavigationController = NotificationNavigationController(rootViewController: objNotificationController)
        notificationNavigationController.delegate = self
        return notificationNavigationController
    }
    func createAddPostTab() -> AddPostNavigationController {
        let objAddPostController = MainStoryBoard.instantiateViewController(withIdentifier: "AddPostViewController") as! AddPostViewController
        let addPostNavigationController: AddPostNavigationController = AddPostNavigationController(rootViewController: objAddPostController)
        addPostNavigationController.delegate = self
        return addPostNavigationController

    }
    
    // MARK: set tab bar attributes....

    func setTabBarAppearance()  {
        self.tabBar.isTranslucent = false
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        self.tabBar.layer.shadowColor = UIColor.darkGray.cgColor
        self.tabBar.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        self.tabBar.layer.shadowOpacity = 1.0
        self.tabBar.layer.shadowRadius = 4.0
        
        // tintColor: covering color selected TabBarItem picture. (The default is blue. Is the color of the selected icon.)

        // barTintColor: entire TabBar background color.

//        UITabBar.appearance().barTintColor = UIColor(red: 50.0/255, green: 50.0/255.0, blue: 50.0/255.0, alpha: 1.0)
        setTabBarIcons()
    }
    
    // MARK: add selected and unselected Images in an Array
    func tabIconsImages() -> NSArray {
        let arrIconsImages = ["HomeTabIcon","GiftShopTabIcon","TalentSeasonTabIcon","NotficationTabIcon","ProfileTabIcon"]
        return arrIconsImages as NSArray;
    }
    func tabIconsSelectedImages() -> NSArray {
        let arrIconsImages = ["HomeTabIconSelected","GiftShopTabIconSelected","TalentSeasonTabIconSelected","NotficationTabIconSelected","ProfileTabIconSelected"]

        return arrIconsImages as NSArray;
    }
    
    // MARK: set the custom images on tab bar..
    func setTabBarIcons()  {
        let arrTabBarItems = self.viewControllers
        let arrTabIcons = tabIconsImages()
        let arrTabIconsSelected = tabIconsSelectedImages()
        
        for i in 0..<arrTabBarItems!.count {
            let tabItem : UITabBarItem = self.tabBar.items![i] as UITabBarItem
            tabItem.image = UIImage(named:arrTabIcons[i] as! String)?.withRenderingMode(.alwaysOriginal)
            tabItem.selectedImage = UIImage(named: arrTabIconsSelected[i] as! String)?.withRenderingMode(.alwaysOriginal)
            
            tabItem.tag = i
            if tabItem.tag == 2 {
                tabItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0)
                let lbl:UILabel = UILabel(frame: CGRect(x: 0, y: 34, width: self.tabBar.frame.size.width/5, height: 14.0))
                lbl.center = CGPoint(x: self.tabBar.frame.midX, y: (lbl.frame.midY))
//                lbl.font = UIFont(name: "HelveticaNeue", size: CGFloat(22))
                lbl.font = UIFont(name: "HelveticaNeue", size: CGFloat(10))
                lbl.textAlignment = .center
                lbl.text = "City Item"
                
                // Enum type, two variations:
                self.tabBar.addSubview(lbl)
            }
    }
        setBadges(badgeValues: [6])
}

    
    
   // MARK: tabBarController delegate methods..
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if viewController.isKind(of: AddPostNavigationController.self){
            let objCityItemDetailsViewController = TabBarDetailsStoryboard.instantiateViewController(withIdentifier: "AddPostDetailsViewController") as! AddPostDetailsViewController
            self.present(objCityItemDetailsViewController, animated:true, completion: nil)

            print("Selected addpost view controller")
        }
    }
    
     func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool
    {
        return true
    }
    
    // MARK: view layout method..
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = true

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

 // MARK : extension set the badge count..
extension UITabBarController {
    func setBadges(badgeValues:[Int]){
        var labelExistsForIndex = [Bool]()
        for _ in badgeValues {
            labelExistsForIndex.append(false)
        }
        for view in self.tabBar.subviews {
            if view is (PGTabBadge) {
                let badgeView = view as! PGTabBadge
                let index = badgeView.tag
                
                if badgeValues[index]==0 {
                    badgeView.removeFromSuperview()
                }
                
                labelExistsForIndex[index]=true
                badgeView.text = String(badgeValues[index])
                
            }
        }
        for  i  in 0..<labelExistsForIndex.count {
            if labelExistsForIndex[i] == false {
                if badgeValues[i] > 0 {
                    addBadge(index: i, value: badgeValues[i], color:UIColor(red: 4/255, green: 110/255, blue: 188/255, alpha: 1), font: UIFont(name: "Helvetica-Light", size: 11)!)
                }
            }
        }
    }
    
    func addBadge(index:Int,value:Int, color:UIColor, font:UIFont){
        let itemPosition = CGFloat(index+4)
        let itemWidth:CGFloat = tabBar.frame.width / CGFloat(tabBar.items!.count)
        let bgColor = color
        let xOffset:CGFloat = 12
        let yOffset:CGFloat = -9
        let badgeView = PGTabBadge()
        badgeView.frame.size =  CGSize(width: 17, height: 17) //CGSizeMake(17, 17)
        badgeView.center = CGPoint(x: (itemWidth * itemPosition)-(itemWidth/2)+xOffset , y : 20+yOffset)
        badgeView.layer.cornerRadius=badgeView.bounds.width/2
        badgeView.clipsToBounds=true
        badgeView.textColor=UIColor.white
        badgeView.textAlignment = .center
        badgeView.font = font
        badgeView.text = String(value)
        badgeView.backgroundColor = bgColor
        badgeView.tag=index
        tabBar.addSubview(badgeView)
    }
}

class PGTabBadge: UILabel {
}
