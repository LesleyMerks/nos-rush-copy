//
//  wallDetail.swift
//  nos-rush
//
//  Created by Lesley Merks on 03/12/14.
//  Copyright (c) 2014 zoetzuur. All rights reserved.
//


import UIKit

class wallDetail: UITableViewController {
    
    @IBOutlet weak var nieuwstitel: UILabel!

    @IBOutlet weak var meerLezenLine: UIView!
    @IBOutlet weak var meerLezen: UILabel!
    @IBOutlet weak var line: UIView!
    @IBOutlet weak var updateView: UIView!

    @IBOutlet weak var nieuwsTekst: UITextView!
    @IBOutlet weak var niewsDatum: UILabel!
    @IBOutlet weak var niewsCat: UILabel!
    @IBOutlet weak var container: UIView!
    @IBOutlet weak var niewsAfbeelding: UIImageView!
    var data = Dictionary<String,String>()
    
    var test = getData()
    var filteredArray  = Array<Dictionary<String,String>>()
    
    var number = 0
    
    func heightForView(text:String, font:UIFont, width:CGFloat) -> CGFloat{
        let label:UILabel = UILabel(frame: CGRectMake(0, 0, width, CGFloat.max))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.ByWordWrapping
        label.font = font
        label.text = text
        
        label.sizeToFit()
        return label.frame.height
    }

    func getArchivedItems(originalData: Array<Dictionary<String, String>>) -> Array<Dictionary<String, String>> {
    
    var archivedItems:Array<Dictionary<String, String>> = []
    
    for item: Dictionary<String, String> in originalData {
    
    let archived:String = item["categorie"]!
    
    if archived == data["categorie"] {
    archivedItems.append(item)
    }
    }
    
    return archivedItems
    }
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        filteredArray = getArchivedItems(test)
        
        let font = UIFont(name: "Helvetica", size: 16.0)
        
        var height = heightForView(data["text"]!, font: font!, width: 283)
        
        
        
        
        nieuwstitel.text = data["titel"]
        niewsDatum.text = data["datum"]
        niewsCat.text = data["categorie"]
        niewsAfbeelding.image = UIImage(named :data["image"]!)
        
        
        meerLezen.frame.origin.y = container.frame.size.height + 286
        meerLezenLine.frame.origin.y =  container.frame.size.height + 332

        nieuwsTekst.frame.size.height = height
        nieuwsTekst.frame.origin.y = 480
        nieuwsTekst.text = data["text"]
        updateView.frame.origin.y = 120
        updateView.layer.zPosition = 1
        nieuwstitel.layer.zPosition = 3
        line.layer.zPosition = 3
        niewsAfbeelding.layer.zPosition = 2
        container.frame.size.height = height + 580
        
        view.addSubview(container)
        view.addSubview(niewsAfbeelding)
        view.addSubview(nieuwstitel)
        view.addSubview(updateView)
        view.addSubview(line)
        container.addSubview(nieuwsTekst)
        
        


        
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
        let cell = self.tableView.dequeueReusableCellWithIdentifier("walldetailCell") as newsCell
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
        self.performSegueWithIdentifier("detailMore", sender: tableView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "detailMore" {
            let candyDetailViewController = segue.destinationViewController as WallDetailMore
            let indexPath = self.tableView.indexPathForSelectedRow()!
            let destinationTitle = filteredArray[indexPath.row]
            candyDetailViewController.data = destinationTitle
            //            candyDetailViewController.filteredArray[indexPath.row]
            
        }
        
    }

    
    

}
