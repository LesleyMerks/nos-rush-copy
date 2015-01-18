//
//  Detail.swift
//  ShotsApp
//
//  Created by Meng To on 2014-07-29.
//  Copyright (c) 2014 Meng To. All rights reserved.
//

import UIKit

class Detail: UITableViewController {
    
    
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsTitel: UILabel!

    
    @IBOutlet weak var container: UIView!
    
   
    @IBOutlet weak var newsCat: UILabel!
    @IBOutlet weak var newsDate: UILabel!
    
    
    @IBOutlet weak var newsText: UILabel!
    var data = Array<Dictionary<String,String>>()
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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor(rgba: "#c81a2a")



        let font = UIFont(name: "Helvetica", size: 16.0)
        
        var height = heightForView(data[number]["text"]!, font: font!, width: 250)
        
       


        newsTitel.text = data[number]["titel"]
        newsDate.text = data[number]["datum"]
        newsCat.text = data[number]["categorie"]
        newsImage.image = UIImage(named :data[number]["image"]!)
        
        

        newsText.frame.size.height = height
        newsText.numberOfLines = 0
        newsText.frame.origin.y = 320
        newsText.text = data[number]["text"]
        
        container.frame.size.height = height + 400
        
        view.addSubview(container)
        container.addSubview(newsText)
        
        
        
        // set the content size to be the size our our whole frame
       }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        //         newsContent.bounds.size = newsContent.contentSize
        
        
        //        backButton.alpha = 1
        //        springScaleFrom(backButton!, -100, 0, 0.5, 0.5)
    }
    
    //    override func prefersStatusBarHidden() -> Bool {
    //        return true
    //    }
}
