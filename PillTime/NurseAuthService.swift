//
//  AuthService.swift
//  PillTime
//
//  Created by Victor Manuel Polanco on 6/9/16.
//  Copyright © 2016 Victor Manuel Polanco. All rights reserved.
//

import Foundation
import AlecrimCoreData

// this class will register and login nurses.

class NurseAuthService: NSObject {
    
    // MARK: Properties
    
    let nurseManager = NurseManager()
    
    // MARK: Initialization
    
    override init() {
        super.init()
        
    }
    
    // MARK: Class Functions
    
    func registerNurse(newNurse: Nurse) -> Bool {
        
        
        return false
    }
    
}