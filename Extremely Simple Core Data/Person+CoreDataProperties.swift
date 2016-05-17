//
//  Person+CoreDataProperties.swift
//  Extremely Simple Core Data
//
//  Created by Ross McIlwaine on 5/17/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Person {

    @NSManaged var name: String?

}
