//
//  Detail.swift
//  ShotsApp
//
//  Created by Meng To on 2014-07-29.
//  Copyright (c) 2014 Meng To. All rights reserved.
//

import UIKit

class Detail: UIViewController {
    
    
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var newsCategory: UILabel!
    @IBOutlet weak var newsDate: UILabel!
    
    @IBOutlet weak var newsContent: UITextView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    var data = Array<Dictionary<String,String>>()
    var number = 0
    
    //    @IBAction func backButtonDidPress(sender: AnyObject) {
    //        performSegueWithIdentifier("detailToHome", sender: sender)
    //    }
    
    //    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
    //        if segue.identifier == "detailToHome" {
    //            let controller = segue.destinationViewController as Home
    //            controller.data = data
    //            controller.number = number
    //            let destinationTitle = self.data[number]["text"]!
    //            controller.title = destinationTitle
    //        }
    //    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController!.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        navigationController!.navigationBar.shadowImage = UIImage()
        navigationController!.navigationBar.translucent = true
        
        navigationController!.hidesBarsOnSwipe = true
        
        // set the content size to be the size our our whole frame
        self.scrollView.contentSize = self.scrollView.frame.size;
        
        // then set frame to be the size of the view's frame
        scrollView.frame = self.view.frame;
        
        // now add our scroll view to the main view
        view .addSubview(self.scrollView)
        
        
        //        newsImage.image = UIImage(named: data[number]["image"]!)
        //        newsTitle.text = data[number]["titel"]
        //        newsDate.text = data[number]["datum"]
        //        newsContent.text = data[number]["text"]
        
        
        
        //        navigationController?.hidesBarsOnSwipe = true
        //        textViewWithFont(descriptionTextView, "Libertad", 16, 7)
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
