//
//  EntryController.swift
//  JournalCD
//
//  Created by Thomas Cowern New on 12/6/18.
//  Copyright © 2018 trevorAdcock. All rights reserved.
//

import Foundation
import CoreData

class EntryController {
    
    // MARK: - Singleton
    static let shared = EntryController()
    
    // MARK: - Private initialization
    private init() {
        
    }
    
    // MARK: - CRUD
    func addEntryWith(title: String, body: String) {
        Entry(title: title, body: body)
        saveToPersistentStorage()
    }
    
    func update(entry: Entry, newTitle: String, newBody: String) {
        entry.title = newTitle
        entry.body = newBody
        saveToPersistentStorage()
    }
    
    func delete(entry: Entry) {
        entry.managedObjectContext?.delete(entry)
        saveToPersistentStorage()
    }
    
    // MARK: - Persistence
    func saveToPersistentStorage() {
        do {
            try CoreDataStack.context.save()
        } catch  {
                print("😡 There was an error in \(#function) ; \(error) ; \(error.localizedDescription)")
        }
    }
    
    
}
