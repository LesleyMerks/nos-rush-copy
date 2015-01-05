//
//  CandyTableViewController.swift
//  CandySearch
//
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

import UIKit

class Archive : UITableViewController, UISearchBarDelegate, UISearchDisplayDelegate {

 var data = Array<Dictionary<String,String>>()
 var filteredArray = Array<Dictionary<String,String>>()
    
    func getArchivedItems(originalData: Array<Dictionary<String, String>>) -> Array<AnyObject> {
        
        var archivedItems:Array<AnyObject> = []
        
        for item: Dictionary<String, String> in originalData {
            
            let archived:String = item["opgeslagen"]!
            
            if archived == "ja" {
                archivedItems.append(item)
            }
        }
        
        return archivedItems
    }

   

 
    override func viewDidLoad() {
       super.viewDidLoad()
        
     
        filteredArray = getArchivedItems(data)
        
        //        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Bordered, target: nil, action: nil)
//        
//        
//        navigationController!.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
//        navigationController!.navigationBar.shadowImage = UIImage()
//        navigationController!.navigationBar.translucent = true
        
        
        
        
//        self.tableView.rowHeight = 120.0
        var refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: Selector("refreshAnimation"), forControlEvents: UIControlEvents.ValueChanged)
        self.refreshControl = refreshControl
        // Reload the table

      
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(Bool())


                self.tableView.reloadData()
        
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            println(filteredArray.count)
            return filteredArray.count
      
    }
    
    

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
          let cell = self.tableView.dequeueReusableCellWithIdentifier("archivecell") as archiveCell
//         let row = indexPath.row
//        let myRowKey = test[row]["titel"]
//        
//        
//        let savedNews  = test[row]["opgeslagen"]
////        println(savedNews)
//        if savedNews == "ja"{
//            cell.textLabel?.text = myRowKey
//            var imageName = UIImage(named: data[row]["image"]!)
//            cell.archiveNewsImage?.image = imageName
//            
//        }
//        else {
//            
//        }
        return cell
       
    }
    
//delete row on swipe right
//    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        if editingStyle == UITableViewCellEditingStyle.Delete {
//            let row = indexPath.row
//            data[row].updateValue("nee", forKey: "opgeslagen")
////            data.removeAtIndex(indexPath.row)
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
//            
//            println(data)
//            
//        }
//    }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("archiveToDetail", sender: tableView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "archiveToDetail" {
            let candyDetailViewController = segue.destinationViewController as UIViewController
//            if sender as UITableView == self.searchDisplayController!.searchResultsTableView {
//                let indexPath = self.searchDisplayController!.searchResultsTableView.indexPathForSelectedRow()!
//                let destinationTitle = self.filteredCandies[indexPath.row].name
//                candyDetailViewController.title = destinationTitle
//            } else {
                let indexPath = self.tableView.indexPathForSelectedRow()!
                let destinationTitle = data[indexPath.row]["titel"]
//            let candyDetailViewController.title = destinationTitle
//            }
        }
    }
    
//     resfresh function
    func refreshAnimation() {
        refreshControl?.endRefreshing()
        
    }
}

