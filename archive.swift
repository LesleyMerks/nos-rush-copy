////
////  archive.swift
////  nos-rush
////
////  Created by Lesley Merks on 08/12/14.
////  Copyright (c) 2014 zoetzuur. All rights reserved.
////
//
//import UIKit
//
//
//class Archive: UITableViewController, UITableViewDelegate, UITableViewDataSource {
//  
//  
//   var items: [String] = ["We", "Heart", "Swift"]
//
////    var items = getArhiveData()
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        
//        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
//
//    }
//    
//    
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.items.count;
//    }
//    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
//        
//       var datas = items[indexPath.row]
//        
//        cell.textLabel.text = items[indexPath.row]
//        if datas.isEmpty {
//            cell.textLabel.text = "Archief is leeg"
//        }
//        return cell
//    }
//    
//    
//    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
//        if editingStyle == UITableViewCellEditingStyle.Delete {
//            items.removeAtIndex(indexPath.row)
//            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
//        }
//    }
//    
//   
//}