//
//  Home.swift
//  ShotsApp
//
//  Created by Meng To on 2014-07-29.
//  Copyright (c) 2014 Meng To. All rights reserved.
//

import UIKit
import MediaPlayer

class Home: UIViewController {
    
    var data = getData()
    
    @IBOutlet weak var userButton: UIButton!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var backgroundMaskView: UIView!
    @IBOutlet weak var dialogView: UIView!
    @IBOutlet weak var imageButton: UIButton!
    
    @IBOutlet weak var newsTitel: UILabel!
    @IBOutlet weak var newsCategory: UILabel!
    @IBOutlet weak var newsSubText: UILabel!
    @IBOutlet weak var newsDate: UILabel!
    
    @IBOutlet weak var newsAlert: UILabel!
    @IBOutlet weak var newsIndex: UILabel!
    @IBOutlet weak var newsTotal: UILabel!
    
    @IBOutlet weak var archiveNews: UIButton!
    
    @IBOutlet weak var ignoreNews: UIButton!
    
    @IBAction func modifyArray(sender: AnyObject) {
        
        
        data[number].updateValue("hallo", forKey: "titel")
        println(data[number]["titel"])
        viewDidAppear(true)
    }
   
    
    @IBAction func imageButtonDidPress(sender: AnyObject) {
        
        
        self.performSegueWithIdentifier("homeToDetail", sender: self)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "homeToDetail" {
            let controller = segue.destinationViewController as Detail
            controller.data = data
            controller.number = number

            controller.hidesBottomBarWhenPushed = true
             controller.navigationItem.hidesBackButton = true
        }
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    override func prefersStatusBarHidden() -> Bool {
        
        return false;
    }
    
    
    
    
    //    var data = getData()
    var nextbackground = 1
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        navigationController!.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
        navigationController!.navigationBar.shadowImage = UIImage()
        navigationController!.navigationBar.translucent = true
        
        insertBlurView(backgroundImageView, UIBlurEffectStyle.Light)
        //        insertBlurView(headerView, UIBlurEffectStyle.Dark)
        
        animator = UIDynamicAnimator(referenceView: view)
        
        dialogView.alpha = 1
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(Bool())
        
        //        UIView.animateWithDuration(1.5, animations: {
        //            self.dialogView.alpha = 1.0
        //                    })
        dialogView.alpha = 1
        newsAlert.alpha = 0
        
        ignoreNews.frame.size.width = 160
        ignoreNews.setTitle("Volgen", forState: UIControlState.Normal)
        
        archiveNews.layer.zPosition = 0;
        archiveNews.frame.origin.x = 160
        archiveNews.frame.size.width = 160
        archiveNews.setTitle("Archiveren", forState: UIControlState.Normal)
        
        //
        let scale = CGAffineTransformMakeScale(1.0, 1.0)
        let translate = CGAffineTransformMakeTranslation(0, 0)
        dialogView.transform = CGAffineTransformConcat(scale, translate)
        
        spring(0.8) {
            let scale = CGAffineTransformMakeScale(1, 1)
            let translate = CGAffineTransformMakeTranslation(0, 0)
            self.dialogView.transform = CGAffineTransformConcat(scale, translate)
            //            self.dialogView.alpha = 1
        }
        
        //
        //println(data.count)
        //         println(number)
        
        
        newsIndex.text = String(number + 1 )
        newsTotal.text = String(data.count )
        newsTitel.text = data[number]["titel"]
        newsCategory.text = data[number]["categorie"]
        newsDate.text = data[number]["datum"]
        newsSubText.text = data[number]["subtext"]
        backgroundImageView.image = UIImage(named: data[nextbackground]["image"]!)
        imageButton.setImage(UIImage(named: data[number]["image"]!), forState: UIControlState.Normal)
        //        backgroundImageView.image = UIImage(named: data[number]["image"]!)
        
    }
    
    var animator : UIDynamicAnimator!
    var attachmentBehavior : UIAttachmentBehavior!
    var gravityBehaviour : UIGravityBehavior!
    var snapBehavior : UISnapBehavior!
    
    
    @IBOutlet var PanRecognizer: UIPanGestureRecognizer!
    
    @IBAction func HandleGesture(sender: AnyObject) {
        
        let myView = dialogView
        let location = sender.locationInView(view)
        let boxLocation = sender.locationInView(dialogView)
        let translation = sender.translationInView(view)
        
      
        
        
        if sender.state == UIGestureRecognizerState.Began {
            animator.removeBehavior(snapBehavior)
            
            let centerOffset = UIOffsetMake(boxLocation.x - CGRectGetMidX(myView.bounds), boxLocation.y - CGRectGetMidY(myView.bounds));
            attachmentBehavior = UIAttachmentBehavior(item: myView, offsetFromCenter: centerOffset, attachedToAnchor: location)
            attachmentBehavior.frequency = 0
            
            animator.addBehavior(attachmentBehavior)
        }
        else if sender.state == UIGestureRecognizerState.Changed {
            attachmentBehavior.anchorPoint = location
//            println(translation.x)
            var savebuttonLocation = translation.x + 160
            var deltebuttonLocationString = translation.x.description
            var deltebuttonLocation = translation.x
//            println(deltebuttonLocation)
            let newString = deltebuttonLocationString.stringByReplacingOccurrencesOfString("-", withString: " ", options: NSStringCompareOptions.LiteralSearch, range: nil)
            
            var floatValue = CGFloat((newString as NSString).floatValue)
            if(translation.x < 1) {
                archiveNews.frame.origin.x = deltebuttonLocation + 160
                archiveNews.frame.size.width = floatValue + 160
                archiveNews.layer.zPosition = 1;
//                println(savebuttonLocation)
                if(archiveNews.frame.size.width > 319 ) {
                    archiveNews.frame.origin.x = 0
                    archiveNews.frame.size.width = 320
                    archiveNews.setTitle("Gearchiveerd", forState: UIControlState.Normal)
                }
            }
            
            
            if translation.x > 1 {
                ignoreNews.frame.size.width = savebuttonLocation
                
            }
                if (savebuttonLocation > 320) {
                    ignoreNews.frame.size.width = 320
                    ignoreNews.setTitle("Opgeslagen", forState: UIControlState.Normal)
                }
                if(translation.x == -1 ){
                    ignoreNews.frame.size.width = 160
                }
            }
        else if sender.state == UIGestureRecognizerState.Ended {
            animator.removeBehavior(attachmentBehavior)
            
            snapBehavior = UISnapBehavior(item: myView, snapToPoint: view.center)
            animator.addBehavior(snapBehavior)
            
            let translation = sender.translationInView(view)
            if translation.x <= -40 {
                animator.removeAllBehaviors()
            
                var gravity = UIGravityBehavior(items: [dialogView])
                gravity.gravityDirection = CGVectorMake(-4, 10)
                animator.addBehavior(gravity)
                
                delay(0.3) {
                    self.refreshView()
                }
            }
  
             if translation.x > 140 {
                animator.removeAllBehaviors()
                var gravity = UIGravityBehavior(items: [dialogView])
                gravity.gravityDirection = CGVectorMake(4, 10)
                animator.addBehavior(gravity)
                
                delay(0.3) {
                    self.refreshView()
                }
                
            }
            
            
            
            
        }
    }
    
    
//    @IBAction func saveNewsItem(sender: AnyObject) {
//        println("opgeslagen")
//        UIView.animateWithDuration(0.5, animations: {
//            self.newsAlert.alpha = 1.0
//        })
//    }
//    
//    // delete and resfresh button
//    @IBAction func deleteNewsItem(sender: AnyObject) {
//        
//        animator.removeAllBehaviors()
//        
//        var gravity = UIGravityBehavior(items: [dialogView])
//        gravity.gravityDirection = CGVectorMake(10, 0)
//        animator.addBehavior(gravity)
//        
//        delay(0.3) {
//            self.refreshView()
//        }
//        
//    }
    
       func refreshView() {
        
        nextbackground++
        
        if(nextbackground > 3){
            nextbackground = 1
        }
        
        number++
        if number > 3 {
            number = 0
        }
        
        animator.removeAllBehaviors()
        
        snapBehavior = UISnapBehavior(item: dialogView, snapToPoint: view.center)
        //       attachmentBehavior.anchorPoint = view.center
        
        dialogView.center = view.center
        UIView.animateWithDuration(0.8, animations: {
            self.dialogView.alpha = 1.0
        })
        viewDidAppear(true)
    }
    
}


