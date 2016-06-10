//
//  Nurse.swift
//  PillTime
//
//  Created by Victor Manuel Polanco on 6/9/16.
//  Copyright © 2016 Victor Manuel Polanco. All rights reserved.
//

import Foundation

// this class serves as model representation of the nurse data.

class Nurse: NSObject {
    
    var email: String!
    var password: String!
    var accessToken: String!
    
    override init() {
        super.init()
    }
    
    init(email: String, password: String) {
        super.init()
        
        self.email = email
        self.password = password
    }
}