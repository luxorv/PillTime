//
//  MedicationSchedule+CoreDataProperties.swift
//  PillTime
//
//  Created by Victor Manuel Polanco on 6/10/16.
//  Copyright © 2016 Victor Manuel Polanco. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension MedicationSchedule {

    @NSManaged var priority: NSNumber?
    @NSManaged var scheduleTime: NSDate?
    @NSManaged var dose: String?
    @NSManaged var medicine: Medicine?
    @NSManaged var patient: Patient?
    @NSManaged var nurse: Nurse?

}
