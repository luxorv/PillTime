//
//  DataManager.swift
//  PillTime
//
//  Created by Victor Manuel Polanco on 6/10/16.
//  Copyright © 2016 Victor Manuel Polanco. All rights reserved.
//

import UIKit
import CoreData

class DatabaseManager: NSObject {

    static var managedObject: NSManagedObjectContext!
    
    static func setManagedObjectContext(managedContext: NSManagedObjectContext) {
        DatabaseManager.managedObject = managedContext
    }
    
    static func initWithApplicationManagedObject() {
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        managedObject = appDelegate.managedObjectContext
    }
    
    static func sharedDatabaseManager() -> NSManagedObjectContext {
        return managedObject
    }
}