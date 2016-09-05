//
//  HomeTableViewController.swift
//  RichTextView
//
//  Created by QingMingZhang on 16/9/5.
//  Copyright © 2016年 极客栈. All rights reserved.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    let dataSource: [String] = ["Rich Text View(富文本)", "Wechat Time Line(朋友圈)", "", "", ""]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        tableView.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataSource.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...
        cell.textLabel?.text = dataSource[indexPath.row]

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        var vc: UIViewController
        switch (indexPath.section, indexPath.row) {
        case (0, 0):
            vc = mainStoryboard.instantiateViewControllerWithIdentifier("RichTextViewViewController") as! RichTextViewViewController
            
            navigationController?.pushViewController(vc, animated: true)
            break
        case (0, 1):
            vc = mainStoryboard.instantiateViewControllerWithIdentifier("RichTextViewViewController") as! RichTextViewViewController
            
            navigationController?.pushViewController(vc, animated: true)
            break
        case (0, 2):
            vc = mainStoryboard.instantiateViewControllerWithIdentifier("RichTextViewViewController") as! RichTextViewViewController
            
            navigationController?.pushViewController(vc, animated: true)
            break
        case (0, 3):
            
            break
        default:
            break
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
