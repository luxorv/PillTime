//
//  DataManager.swift
//  PillTime
//
//  Created by Victor Manuel Polanco on 6/10/16.
//  Copyright © 2016 Victor Manuel Polanco. All rights reserved.
//

import Foundation
import AlecrimCoreData

extension DataContext {
    var nurses:      Table<Nurse>     { return Table<Nurse>(dataContext: self) }
    var medicines: Table<Medicine> { return Table<Medicine>(dataContext: self) }
    var schedules: Table<MedicationSchedule> { return Table<MedicationSchedule>(dataContext: self) }
    var patients: Table<Patient> { return Table<Patient>(dataContext: self) }
}

class DatabaseManager: DataContext {
    
    static let sharedDatabaseManager = DatabaseManager()
    
}