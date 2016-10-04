//
//  EventViewDetailsController.swift
//  DigiCity
//
//  Created by Varun Kumar on 04/10/16.
//  Copyright © 2016 Varun. All rights reserved.
//

import UIKit

class EventViewDetailsController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction internal func backBtnTapped(sender: AnyObject){
        self.navigationController?.popViewController(animated: true)
    }
    override func viewWillAppear(_ animated: Bool)
    {
        AppUtility.hideTabBar(animated: true)
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = true
        
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        AppUtility.showTabBar(animated: true)
        super.viewWillDisappear(animated)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
