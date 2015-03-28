//
//  AcademicViewController.swift
//  BmscePortal
//
//  Created by Deepanshu Jain on 11/03/15.
//  Copyright (c) 2015 Deepanshu Jain. All rights reserved.
//

import UIKit

class AcademicViewController: UITableViewController {
    
    var academic: [Academics] = academicdata
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return academic.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let row = indexPath.row
        println(row)
        let cell = tableView.dequeueReusableCellWithIdentifier("SemDetails", forIndexPath: indexPath) as UITableViewCell
        
        let academicsview = academic[indexPath.row] as Academics
        
        if let nameLabel = cell.viewWithTag(100) as? UILabel {
            nameLabel.text = String(academicsview.semester)  }
        
        if let sgpaLabel = cell.viewWithTag(101) as? UILabel {
            sgpaLabel.text = String(format: "%.2f", academicsview.sgpa)
        }
        
        if let cgpaLabel = cell.viewWithTag(102) as? UILabel {
            cgpaLabel.text = String(format: "%.2f", academicsview.cgpa)
        }
      
        return cell
        
    }
    
}