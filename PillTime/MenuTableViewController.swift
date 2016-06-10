//
//  MenuTableViewController.swift
//  PillTime
//
//  Created by Victor Manuel Polanco on 6/9/16.
//  Copyright © 2016 Victor Manuel Polanco. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    struct Bird {
        var name: String
    }
    
    var birds: [Bird]!
    
    override func viewDidLoad() {
         super.viewDidLoad()
        
        birds = []
        
        birds.append(Bird(name: "Medicines"))
        birds.append(Bird(name: "Patients"))
        birds.append(Bird(name: "Login"))
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return birds.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath)
        
        cell.textLabel?.text = birds[indexPath.row].name
        
        return cell
    }
}
