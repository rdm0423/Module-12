//
//  ViewController.swift
//  Extremely Simple Core Data
//
//  Created by Ross McIlwaine on 5/17/16.
//  Copyright © 2016 Ross McIlwaine. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    // ********* This core data example does not use the convience initializer or the PersonController. Uses only core data model and this View Controller **********
    
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let request = NSFetchRequest(entityName: "Person")
        let managedObjectContext = Stack.sharedStack.managedObjectContext
        if let people = try? managedObjectContext.executeFetchRequest(request),
            person = people.first {
            let name = person.valueForKey("name") as! String
            nameTextField.text = name
        }
        
        
    }

    @IBAction func createPersonButtonTapped(sender: AnyObject) {
        
        
        
        // Andrew - quick core data - does not use convience  and other core data functions. Only what is on this VC and the Core Data Model
        let managedObjectContext = Stack.sharedStack.managedObjectContext
        let entity = NSEntityDescription.entityForName("Person", inManagedObjectContext: managedObjectContext)!
        let person = NSManagedObject(entity: entity, insertIntoManagedObjectContext: managedObjectContext)
        
        person.setValue(nameTextField.text, forKey: "name")
        let _ = try? managedObjectContext.save()
        
    }
    
    


}

