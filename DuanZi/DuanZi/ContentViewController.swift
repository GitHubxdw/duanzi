//
//  ContentViewController.swift
//  DuanZi
//
//  Created by xdw on 15/10/20.
//  Copyright © 2015年 xdw. All rights reserved.
//

import UIKit

var dataArr:NSArray?

class ContentViewController: UIViewController {
    var index  :Int = 0
    @IBOutlet weak var myTab: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataArr = GetDataFromDB.getdata(index * 1000 + 1)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (dataArr?.count)!
    }
    
//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        
//        return 50
//    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell : ContentCell = tableView.dequeueReusableCellWithIdentifier("contentcell", forIndexPath: indexPath) as! ContentCell
        
        cell.contentLab.text = dataArr?.objectAtIndex(indexPath.row) as? String
        return cell
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
