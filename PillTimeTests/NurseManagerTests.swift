//
//  NurseManagerTests.swift
//  PillTime
//
//  Created by Victor Manuel Polanco on 6/10/16.
//  Copyright © 2016 Victor Manuel Polanco. All rights reserved.
//

import CoreData
import UIKit
import XCTest
@testable import PillTime

class NurseManagerTests: CoreDataTestCase {

    // MARK: -  Properties
    
    var nurseManager: NurseManager!
    var email: String!
    var password: String!
    
    // MARK: -  Set Up & Tear Down
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        DatabaseManager.setManagedObjectContext(managedObjectContext)
        
        nurseManager = NurseManager()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: -  Test Cases

    func testNurseRegistration() {
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        self.email = "v"
        self.password = "s"
        
        XCTAssertTrue(nurseManager.createNurse(email, password: password), "Nurse could not be created")
        
        self.email = "eeee"
        self.password = "s"
        
        XCTAssertFalse(nurseManager.createNurse(email, password: password), "Nurse shouldn't be created")
    }
    
    func testLogin() {
        // TO DO
    }
}
