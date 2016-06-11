//
//  NurseManagerTests.swift
//  PillTime
//
//  Created by Victor Manuel Polanco on 6/10/16.
//  Copyright © 2016 Victor Manuel Polanco. All rights reserved.
//

import CoreData
import XCTest
@testable import PillTime

class NurseManagerTests: XCTestCase {

    // MARK: -  Properties
    
    var nurseManager: NurseManager!
    var nurse: Nurse!
    
    
    // MARK: -  Set Up & Tear Down
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        nurseManager = NurseManager()
        
        nurse = DatabaseManager.sharedDatabaseManager.nurses.createEntity()
        
        nurse.email = "he"
        nurse.password = "s"
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    // MARK: -  Testing Methods

    func testNurseRegistration() {
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    
        XCTAssert(nurseManager.createNurse(nurse))

    }
}
