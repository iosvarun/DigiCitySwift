//
//  AddPostDetailsViewController.swift
//  DigiCity
//
//  Created by Varun Kumar on 05/10/16.
//  Copyright © 2016 Varun. All rights reserved.
//

import UIKit


class AddPostDetailsViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var addPostTableView :UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
//        addPostTableView.sectionHeaderHeight = 70
        
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
    @IBAction internal func backBtnTapped(sender: AnyObject){
        self.dismiss(animated: true, completion: nil)
        
    }
    @IBAction internal func postSendTapped(sender: AnyObject){
        self.dismiss(animated: true, completion: nil)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:AddPostTableViewCell = tableView.dequeueReusableCell(withIdentifier:"AddPostTableViewCell") as! AddPostTableViewCell
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected row \(indexPath.row) ")
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 178;
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
       
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 100))
        view.backgroundColor = UIColor.brown
        
        let imageView = UIImageView (frame: CGRect (x: 15, y: 10, width: 80, height: 60))
        imageView.backgroundColor = UIColor.yellow
        
        let label = UILabel(frame: CGRect(x: 110, y: 20, width: 200, height: 40))
        label.text = "What's on your mind"
        label.textColor = UIColor.red
        label.backgroundColor = UIColor.blue
        
        let tagPersonBtn = UIButton(frame: CGRect(x: 15, y: 80, width: 40, height: 40))
        tagPersonBtn.backgroundColor = UIColor.red
        
        let tagPlaceBtn = UIButton(frame: CGRect(x: 70, y: 80, width: 40, height: 40))
        tagPlaceBtn.backgroundColor = UIColor.blue

        view.addSubview(imageView)
        view.addSubview(label)
        view.addSubview(tagPersonBtn)
        view.addSubview(tagPlaceBtn)

        self.view.addSubview(view)

        return view
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 130
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
