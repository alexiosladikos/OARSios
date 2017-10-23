//
//  ReportCardCellTableViewController.swift
//  OARS_mobile
//
//  Created by Alexios Ladikos on 10/23/17.
//  Copyright © 2017 q21. All rights reserved.
//

import UIKit

class ReportCardCellTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    let states = ["red","orange","yellow","green"]
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (states.count)
    }
    
   public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
   {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!  ReportCardTableViewCell
        cell.myImage.image =  UIImage(named: (states[indexPath.row] + ".jpg"))
        cell.myLabel.text = states[indexPath.row]
        return (cell)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
