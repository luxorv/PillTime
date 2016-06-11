//
//  ViewController.swift
//  PillTime
//
//  Created by Victor Manuel Polanco on 6/9/16.
//  Copyright © 2016 Victor Manuel Polanco. All rights reserved.
//

import UIKit
import CoreData

class ViewController:  UINavigationController {
    
    var rightViewController: UIViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        for nurse in DatabaseManager.sharedDatabaseManager.nurses {
//            DatabaseManager.sharedDatabaseManager.nurses.deleteEntity(nurse)
//        }
//        
//        do {
//            try DatabaseManager.sharedDatabaseManager.save()
//        } catch {
//            print("Cannot delte")
//        }
        
//        
//        var nurseM = NurseManager()
//        var nurse = DatabaseManager.sharedDatabaseManager.nurses.createEntity()
//        
//        nurse.email = "eeee"
//        nurse.password = "sasa"
//        
//        print(nurseM.createNurse(nurse))
//        print(nurseM.isNurseRegistered("eeee"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

