//
//  CandyTableViewController.swift
//  CandySearch
//
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

import UIKit

class Archive : UITableViewController, UISearchBarDelegate, UISearchDisplayDelegate {
    
    
    
var data = Array<Dictionary<String,String>>()
    
    

    
    override func viewDidLoad() {
       super.viewDidLoad()
        
        for myValue  in  data {
            if myValue["titel"] == "IS slaat weer toe"{
//                
//                 self.data = myValue
//                println(data)
                
             
                
            }
            else {
                println ("neat good")
            }
        }
        
        //        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Bordered, target: nil, action: nil)
//        
//        
//        navigationController!.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
//        navigationController!.navigationBar.shadowImage = UIImage()
//        navigationController!.navigationBar.translucent = true
        
        
        
        
        self.tableView.rowHeight = 120.0
        var refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: Selector("refreshAnimation"), forControlEvents: UIControlEvents.ValueChanged)
        self.refreshControl = refreshControl
        // Reload the table
        self.tableView.reloadData()
        
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return data.count
      
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
         var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("archivecell") as UITableViewCell        
         let row = indexPath.row
        let myRowKey = data[row]["titel"]
        let savedNews  = data[row]["opgeslagen"]
        println(savedNews)
        if savedNews == "ja"{
            cell.textLabel?.text = myRowKey
        }
        else {
            
        }
        return cell
    }
    
//delet row on swipe right
//    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        if editingStyle == UITableViewCellEditingStyle.Delete {
//            candies.removeAtIndex(indexPath.row)
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
//        }
//    }
    
    
//    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        self.performSegueWithIdentifier("candyDetail", sender: tableView)
//    }
//    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
//        if segue.identifier == "candyDetail" {
//            let candyDetailViewController = segue.destinationViewController as UIViewController
//            if sender as UITableView == self.searchDisplayController!.searchResultsTableView {
//                let indexPath = self.searchDisplayController!.searchResultsTableView.indexPathForSelectedRow()!
//                let destinationTitle = self.filteredCandies[indexPath.row].name
//                candyDetailViewController.title = destinationTitle
//            } else {
//                let indexPath = self.tableView.indexPathForSelectedRow()!
//                let destinationTitle = self.candies[indexPath.row].name
//                candyDetailViewController.title = destinationTitle
//            }
//        }
//    }
//    
    // resfresh function
    func refreshAnimation() {
        refreshControl?.endRefreshing()
        
    }
}

