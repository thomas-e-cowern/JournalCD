//
//  CoreDataStack.swift
//  JournalCD
//
//  Created by Thomas Cowern New on 12/6/18.
//  Copyright © 2018 trevorAdcock. All rights reserved.
//

import Foundation
import CoreData

enum CoreDataStack {
    static let container: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "JournalCD")
        container.loadPersistentStores() { (_, error) in
            if let error = error as NSError? {
                fatalError("😡  Unresolved error \(error), \(error.userInfo)")
            }
        }
        return container
    }()
    
    static var context: NSManagedObjectContext { return container.viewContext }
}
