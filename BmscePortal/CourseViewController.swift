//
//  CourseViewController.swift
//  BmscePortal
//
//  Created by Deepanshu Jain on 12/03/15.
//  Copyright (c) 2015 Deepanshu Jain. All rights reserved.
//
import UIKit


class CourseViewController: UITableViewController {

    
    var courses :[Course] = coursedata;
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let row = indexPath.row
        println(row)
       /*
       if let coursview : AnyObject! = self.storyboard?.instantiateViewControllerWithIdentifier("CourseIdentify")
       {println("programatically")
        self.showViewController(coursview as UIViewController, sender: coursview)
        println("prom")
        }*/
        let cell = tableView.dequeueReusableCellWithIdentifier("CourseDetails", forIndexPath: indexPath) as UITableViewCell
        
        let courseview = courses[indexPath.row] as Course
        
        if let codeLabel = cell.viewWithTag(201) as? UILabel {
            codeLabel.text = courseview.coursecode }
        
        if let coursenameLabel = cell.viewWithTag(202) as? UILabel{
            coursenameLabel.text = String(courseview.coursename)}

        if let creditsLabel = cell.viewWithTag(203) as? UILabel{
            creditsLabel.text = String(courseview.credits)}
        
        if let gradeLabel = cell.viewWithTag(204) as? UILabel{
            gradeLabel.text = String(courseview.grade)}
        
        if let sessionLabel = cell.viewWithTag(205) as? UILabel{
            sessionLabel.text = String(courseview.session)
        }
    
        return cell
        
    }
    
    
}
