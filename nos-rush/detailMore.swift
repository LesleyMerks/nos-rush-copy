//
//  wallDetail.swift
//  nos-rush
//
//  Created by Lesley Merks on 03/12/14.
//  Copyright (c) 2014 zoetzuur. All rights reserved.
//


import UIKit

class DetailMore: UIViewController {
    
  
    @IBOutlet weak var nieuwsTekst: UITextView!
    @IBOutlet weak var nieuwsTitel: UILabel!
    @IBOutlet weak var scrollContainer: UIScrollView!
    
    @IBOutlet weak var nieuwsDatum: UILabel!
    @IBOutlet weak var nieuwsCat: UILabel!
    @IBOutlet weak var nieuwsAfbeelding: UIImageView!
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
        
        nieuwsDatum.text = data["datum"]
        nieuwsCat.text = data["categorie"]
        nieuwsTitel.text = data["titel"]
        nieuwsTekst?.text = data["text"]
        nieuwsAfbeelding.image = UIImage(named: data["image"]!)
        
        let font = UIFont(name: "Helvetica", size: 16.0)
        
        var heights = heightForView(data["text"]!, font: font!, width: 283)
        
        
        
        
        
        
        
        nieuwsTekst?.frame.size.height = heights + 20
        
        
        nieuwsTekst?.frame.origin.y = 330
        nieuwsTekst?.text = data["text"]
        
        scrollContainer.contentSize = CGSize(width:self.view.bounds.size.width, height: heights+500 )
        view.addSubview(scrollContainer)
        scrollContainer.addSubview(nieuwsTekst)
        
        
        
        
    }
    
    
    
    
    
    
    
    
}
