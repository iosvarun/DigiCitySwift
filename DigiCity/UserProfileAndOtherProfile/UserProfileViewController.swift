//
//  UserProfileViewController.swift
//  DigiCity
//
//  Created by Varun Kumar on 15/09/16.
//  Copyright © 2016 Varun. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool)
    {
        AppUtility.hideTabBar(animated: true)
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
        
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        AppUtility.showTabBar(animated: true)
        super.viewWillDisappear(animated)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction internal func backBtnTapped(sender: AnyObject){
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction internal func settingsBtnTapped(sender: AnyObject){
        let objCityItemListViewController = ProfileStoryboard.instantiateViewController(withIdentifier: "UserSettingsViewController") as! UserSettingsViewController
        self.navigationController?.pushViewController(objCityItemListViewController, animated: true)
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
