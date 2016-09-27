//
//  LoginViewController.swift
//  DigiCity
//
//  Created by Varun Kumar on 15/09/16.
//  Copyright © 2016 Varun. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController {


    @IBOutlet weak var textFiledEmail: UITextField!
    @IBOutlet weak var textFiledPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if  AppUtility.isUserAvailable(){
            print("true")
            print(LoggedInUserDefaults.string(forKey: "access_token"))
        }
        else{
            print("false")
            LoggedInUserDefaults.set("Coding Explorer", forKey: "access_token")
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction internal func logInTapped(sender: AnyObject){
        let mainTabbarController = MainStoryBoard.instantiateViewController(withIdentifier: "MainTabBarController") as! MainTabBarController
        self.navigationController?.pushViewController(mainTabbarController, animated: true)
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
