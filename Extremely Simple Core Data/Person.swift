//
//  Person.swift
//  Extremely Simple Core Data
//
//  Created by Ross McIlwaine on 5/17/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import Foundation
import CoreData

@objc(Person)
class Person: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    // Set values needed in model
    convenience init(name: String, context: NSManagedObjectContext = Stack.sharedStack.managedObjectContext) {
        
        let entity = NSEntityDescription.entityForName("Person", inManagedObjectContext: context)!
        
        self.init(entity: entity, insertIntoManagedObjectContext: context)
        
        self.name = name
        
    }
    

}
