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
        
        
//        let nurseM = NurseManager()
//        let nurseDescription = NSEntityDescription.entityForName("Nurse", inManagedObjectContext: DatabaseManager.sharedDatabaseManager())
//        let nurse = Nurse(entity: nurseDescription!, insertIntoManagedObjectContext: DatabaseManager.sharedDatabaseManager())
//        
//        nurse.email = "eqe"
//        nurse.password = "sasa"
//        
//        print(nurseM.isNurseRegistered("eqe"))
//        //print(nurseM.createNurse(nurse))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

