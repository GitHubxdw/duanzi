//
//  ViewController.swift
//  DuanZi
//
//  Created by xdw on 15/10/19.
//  Copyright © 2015年 xdw. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{

    @IBOutlet weak var listTab: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        listTab.delegate = self
        listTab.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
       
    }
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : ListCell = tableView.dequeueReusableCellWithIdentifier("listcell", forIndexPath: indexPath) as! ListCell
    
        cell.listLab.text = "第\(indexPath.row)行"
        
     
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let tabbarStory : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let contentVC  : ContentViewController = tabbarStory.instantiateViewControllerWithIdentifier("contentVC") as! ContentViewController
        contentVC.index = indexPath.row
        self.navigationController?.pushViewController(contentVC, animated: true)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

