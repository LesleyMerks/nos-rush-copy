

import UIKit

class Archive : UITableViewController  {

 var data = Array<Dictionary<String,String>>()
 var filteredArray = Array<Dictionary<String,String>>()
    var number = 0
    
    func getArchivedItems(originalData: Array<Dictionary<String, String>>) -> Array<Dictionary<String, String>> {
        
        var archivedItems:Array<Dictionary<String, String>> = []
        
        for item: Dictionary<String, String> in originalData {
            
            let archived:String = item["opgeslagen"]!
            
            if archived == "nee" {
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
        let row = indexPath.row
        
        let titel = filteredArray[row]["titel"]
        let datum = filteredArray[row]["datum"]
        
        
        cell.niewsTitel.text = titel
        cell.niewsDatum.text = datum
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor(rgba: "#e9e9e9")
        }
        return cell
       
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("archiveToDetail", sender: tableView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "archiveToDetail" {
            let candyDetailViewController = segue.destinationViewController as UIViewController

                let indexPath = self.tableView.indexPathForSelectedRow()!
                let destinationTitle = data[indexPath.row]["titel"]

        }
    }
    
//     resfresh function
    func refreshAnimation() {
        refreshControl?.endRefreshing()
        
    }
}

