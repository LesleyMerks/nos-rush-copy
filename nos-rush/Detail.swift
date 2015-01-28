
import UIKit

class Detail: UITableViewController {
    
    
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsTitel: UILabel!

    @IBOutlet weak var meerLezen: UILabel!
    
    @IBOutlet weak var meerLezenLine: UIView!
    @IBOutlet weak var container: UIView!
    
   
    @IBOutlet weak var newsCat: UILabel!
    @IBOutlet weak var newsDate: UILabel!
    
    
    @IBOutlet weak var newsText: UITextView?
    var data = Array<Dictionary<String,String>>()
    var filteredArray  = Array<Dictionary<String,String>>()
    var number = 0
    
    func getArchivedItems(originalData: Array<Dictionary<String, String>>) -> Array<Dictionary<String, String>> {
        
        var archivedItems:Array<Dictionary<String, String>> = []
        
        for item: Dictionary<String, String> in originalData {
            
            let archived:String = item["categorie"]!
            
            if archived == data[number]["categorie"] {
                archivedItems.append(item)
            }
        }
        
        return archivedItems
    }

    
    
    func heightForView(text:String, font:UIFont, width:CGFloat) -> CGFloat{
        let label:UILabel = UILabel(frame: CGRectMake(0, 0, width, CGFloat.max))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        label.font = font
        label.text = text
        
        label.sizeToFit()
        return label.frame.height
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filteredArray = getArchivedItems(data)
        
        self.navigationController?.navigationBar.tintColor = UIColor(rgba: "#c81a2a")



        let font = UIFont(name: "Helvetica", size: 16.0)
        
        var height = heightForView(data[number]["text"]!, font: font!, width: 283)
        
       


        newsTitel.text = data[number]["titel"]
        newsDate.text = data[number]["datum"]
        newsCat.text = data[number]["categorie"]
        newsImage.image = UIImage(named :data[number]["image"]!)
        
        
       
        newsText?.frame.size.height = height + 50
        newsText?.frame.origin.y = 300
        newsText?.text = data[number]["text"]

        
        container.frame.size.height = height + 430
        
        meerLezen.frame.origin.y = container.frame.size.height-42
        meerLezenLine.frame.origin.y =  container.frame.size.height
        
        view.addSubview(container)
        container.addSubview(newsText!)
        
        
       }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
      
    }
    
   
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if filteredArray.count > 3 {
            return 3
        }
        else {
            
        }
        return filteredArray.count
    }
    
    
    
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("detailCell") as newsCell
        let row = indexPath.row
        let titel = filteredArray[row]["titel"]
        let datum = filteredArray[row]["datum"]
        let image = filteredArray[row]["thumb"]
        
        
        cell.newsTitel.text = titel
        cell.newsSubTitel.text = datum
        cell.newsImageView.image = UIImage(named: image!)
        
        
        return cell
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("singleMore", sender: tableView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "singleMore" {
            let candyDetailViewController = segue.destinationViewController as DetailMore
            let indexPath = self.tableView.indexPathForSelectedRow()!
            let destinationTitle = filteredArray[indexPath.row]
            candyDetailViewController.data = destinationTitle
        }
        
    }


}
