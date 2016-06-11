//
//  NurseManager.swift
//  PillTime
//
//  Created by Victor Manuel Polanco on 6/10/16.
//  Copyright © 2016 Victor Manuel Polanco. All rights reserved.
//

import Foundation
import CoreData

// this class will make create and manage the nurses.

class NurseManager: NSObject {
    
    // MARK: Properties
    
    var currentNurse: Nurse!
    
    // MARK: Initialization
    
    override init() {
        super.init()
    }
    
    // MARK: Class Function
    
    // Create a new Nurse.
    
    func createNurse(email: String, password: String) -> Bool {
        
        var saved = true
        
        if isNurseRegistered(email) {
            return false
        }
        
        let nurseDescription = NSEntityDescription.entityForName("Nurse", inManagedObjectContext: DatabaseManager.sharedDatabaseManager())
        let nurse = Nurse(entity: nurseDescription!, insertIntoManagedObjectContext: DatabaseManager.sharedDatabaseManager())
        
        nurse.email = email
        nurse.password = password
        
        do {
            try nurse.managedObjectContext?.save()
            self.currentNurse = nurse
        } catch let error {
            print(error)
            saved = false
        }
        
        return saved
    }
    
    // Check if Nurse with provided email is registered.
    
    func isNurseRegistered(email: String, patientCreation: Bool = false) -> Bool {
        
        let nurseFetch = NSFetchRequest(entityName: "Nurse")
        var nurses = []
        
        do {
            nurses = try DatabaseManager.sharedDatabaseManager().executeFetchRequest(nurseFetch) as! [Nurse]
        } catch {
            print("Failed to fetch Nurses")
        }
        
        for nurse in nurses {
            print("EMAIL: \(nurse.email)")
            
            if nurse.email == email {
                return true
            }
        }
        
        return false
    }
}