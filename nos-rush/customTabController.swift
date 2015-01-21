//
//  customTabController.swift
//  nos-rush
//
//  Created by Lesley Merks on 28/11/14.
//  Copyright (c) 2014 zoetzuur. All rights reserved.
//

import UIKit

class customTabController: UITabBarController, UITabBarControllerDelegate  {
    
    var data = getData()
    var number = 0
    
       override func viewDidLoad() {
        super.viewDidLoad()
//        self.delegate = self
        
      
                // load second tabbarview
       self.selectedIndex = 1;
        let tabItems = tabBar.items as [UITabBarItem]
       
        


//        tabItems[0].title = "First"
        
        
        let appearance = UITabBar.appearance()

        appearance.selectedImageTintColor = UIColor (rgba: "#fff")
       



        
//       var cameraTab : UITabBarItem = self.tabBar.items![1] as UITabBarItem
//       cameraTab.badgeValue = "4"
        
    
            
    }
//    
//    override func prepareForSegue(segue: UIStoryboardSegue,
//        sender: AnyObject?) {
//            if segue.identifier == "test" {
//            let segue = segue.destinationViewController as
//            Archive
//            segue.data = data
//            println(data)
//                
//            }
//    }
    
    }
