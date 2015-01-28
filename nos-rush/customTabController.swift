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
      
                // load second tabbarview
       self.selectedIndex = 1;
        let tabItems = tabBar.items as [UITabBarItem]
        let appearance = UITabBar.appearance()

        appearance.selectedImageTintColor = UIColor (rgba: "#fff")
       
        
    }
    
    }
