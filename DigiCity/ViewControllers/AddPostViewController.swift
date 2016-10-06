//
//  AddPostViewController.swift
//  DigiCity
//
//  Created by Varun Kumar on 15/09/16.
//  Copyright © 2016 Varun. All rights reserved.
//

import UIKit

class AddPostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction internal func userProfileTapped(sender: AnyObject){
        let objCityItemListViewController = ProfileStoryboard.instantiateViewController(withIdentifier: "UserProfileViewController") as! UserProfileViewController
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
