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
        self.delegate = self
        
      
                // load second tabbarview
       self.selectedIndex = 1;
        let tabItems = tabBar.items as [UITabBarItem]
        tabItems[0].title = "First"

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
    
    func tabBarController(tabBarController: UITabBarController, didSelectViewController viewController: UIViewController) {
        var logView = viewControllers![1] as Archive
        println(logView)
    }
}
