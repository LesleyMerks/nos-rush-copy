//
//  customTabController.swift
//  nos-rush
//
//  Created by Lesley Merks on 28/11/14.
//  Copyright (c) 2014 zoetzuur. All rights reserved.
//

import UIKit

class customTabController: UITabBarController  {
    
    
       override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
      
        
        // load second tabbarview
       self.selectedIndex = 1;
        let tabItems = tabBar.items as [UITabBarItem]
        tabItems[0].title = "First"

       var cameraTab : UITabBarItem = self.tabBar.items![1] as UITabBarItem
       cameraTab.badgeValue = "4"
        
            
            
    }
  
}
