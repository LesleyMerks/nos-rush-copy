//
//  Copyright (c) 2014 Razeware LLC. All rights reserved.
//

import UIKit

class CandyTableViewController : UITableViewController, UISearchBarDelegate, UISearchDisplayDelegate {
    
    var data = Array<Dictionary<String,String>>()
    var filteredArray = Array<Dictionary<String,String>>()
    
    var number = 0

    
    
    func getArchivedItems(originalData: Array<Dictionary<String, String>>) -> Array<Dictionary<String, String>> {
        
        var archivedItems:Array<Dictionary<String, String>> = []
        
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
        println(filteredArray)
        
        var refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: Selector("refreshAnimation"), forControlEvents: UIControlEvents.ValueChanged)
        self.refreshControl = refreshControl
        // Reload the table
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(Bool())
        filteredArray = getArchivedItems(data)
        
        self.tableView.reloadData()
        
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        println(filteredArray.count)
        return filteredArray.count
        
    }
    
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("wallCell") as newsCell
        let row = indexPath.row
        
        let titel = filteredArray[row]["titel"]
        let date = filteredArray[row]["datum"]
        let image = filteredArray[row]["thumb"]
        
        
        cell.newsTitel.text = titel
        cell.newsSubTitel.text = date
        cell.newsImageView.image = UIImage(named: image!)
        
        return cell
    }
    
//    delete row on swipe right
        override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
            if editingStyle == UITableViewCellEditingStyle.Delete {
                let row = indexPath.row
                data[row].updateValue("nee", forKey: "opgeslagen")
                data.removeAtIndex(row)
                tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Fade)
            }
        }
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("candyDetail", sender: tableView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "candyDetail" {
            let candyDetailViewController = segue.destinationViewController as wallDetail
                       let indexPath = self.tableView.indexPathForSelectedRow()!
            let destinationTitle = filteredArray[indexPath.row]
            candyDetailViewController.data = destinationTitle
          }
        
    }
    
    //     resfresh function
    func refreshAnimation() {
        refreshControl?.endRefreshing()
        
    }
}

