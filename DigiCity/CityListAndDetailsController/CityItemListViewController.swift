//
//  CityItemListViewController.swift
//  DigiCity
//
//  Created by Varun Kumar on 15/09/16.
//  Copyright © 2016 Varun. All rights reserved.
//

import UIKit

class CityItemListViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var cityItemTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CityItemsTableViewCell = tableView.dequeueReusableCell(withIdentifier:"CityItemsTableViewCell") as! CityItemsTableViewCell
        return cell
        
    }
    
   
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected row \(indexPath.row) ")
        let objCityItemDetailsViewController = TabBarDetailsStoryboard.instantiateViewController(withIdentifier: "CityItemDetailsViewController") as! CityItemDetailsViewController
        self.navigationController?.pushViewController(objCityItemDetailsViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 95
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.separatorInset = UIEdgeInsets.zero
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 8
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view:UIView = UIView(frame: CGRect(x: 0, y: 34, width: tableView.frame.size.width, height: 10))
        view.backgroundColor = UIColor(colorLiteralRed: 0.93, green: 0.93, blue: 0.93, alpha: 1.0)
        return view;
        
    }
    
    
    @IBAction internal func backBtnTapped(sender: AnyObject){
        self.navigationController?.popViewController(animated: true)

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
