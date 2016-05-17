//
//  PersonController.swift
//  Extremely Simple Core Data
//
//  Created by Ross McIlwaine on 5/17/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import Foundation
import CoreData


class PersonController {
    
    static let sharedController = PersonController()
    
    var persons: [Person] {
        let request = NSFetchRequest(entityName: "Person")
        let managedObjectContext = Stack.sharedStack.managedObjectContext
        
        do {
            return try managedObjectContext.executeFetchRequest(request) as! [Person]
        } catch {
            return []
        }
    }
    
    func addPerson(person: Person) {
        
        self.saveToPersistentStorage()
    }
    
    func removePerson(person: Person) {
        
        person.managedObjectContext?.deleteObject(person)
        self.saveToPersistentStorage()
    }
    
    func saveToPersistentStorage() {
        
        let managedObjectContext = Stack.sharedStack.managedObjectContext
        do {
            try managedObjectContext.save()
        } catch {
            print(error)
        }
    }
    
    
    
    
}