//
//  archive.swift
//  nos-rush
//
//  Created by Lesley Merks on 08/12/14.
//  Copyright (c) 2014 zoetzuur. All rights reserved.
//

import UIKit


class CategorySettings: UITableViewController, UITableViewDelegate, UITableViewDataSource {
    
    var data = Array<Dictionary<String,String>>()
    var filteredArray = Array<Dictionary<String,String>>()
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        println(data)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "toArchive" {
            let controller = segue.destinationViewController as Archive
            controller.data = data
           controller.number = number
            controller.filteredArray = filteredArray
            
        }
    }
    
    
}