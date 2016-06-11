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
    
    func createNurse(newNurse: Nurse) -> Bool {
        
        var saved = true
        
        let nurse = DatabaseManager.sharedDatabaseManager.nurses.createEntity()
        
        nurse.email = newNurse.email
        nurse.password = newNurse.password
        
        do {
            try DatabaseManager.sharedDatabaseManager.save()
            self.currentNurse = nurse
        } catch let error {
            print(error)
            saved = false
        }
        
        return saved
    }
    
    // Check if Nurse with provided email is registered.
    
    func isNurseRegistered(email: String, patientCreation: Bool = false) -> Bool {
        
        let nurses = DatabaseManager.sharedDatabaseManager.nurses.filter {$0.email == email}
        
        if  nurses.count > 0 {
            return true
        }
        
        if !patientCreation {
            self.currentNurse = nurses.first
        }
        
        for nurse in DatabaseManager.sharedDatabaseManager.nurses {
            print("EMAIL: \(nurse.email!)")
        }
        
        return false
    }
}