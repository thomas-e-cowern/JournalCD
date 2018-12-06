//
//  Entry+Convenience.swift
//  JournalCD
//
//  Created by Thomas Cowern New on 12/6/18.
//  Copyright © 2018 trevorAdcock. All rights reserved.
//

import Foundation
import CoreData

extension Entry {
    
    @discardableResult
    convenience init(title: String, body: String, timeStamp: Date = Date(), context: NSManagedObjectContext = CoreDataStack.context) {
        self.init(context: context)
        self.title = title
        self.body = body
        self.timeStamp = timeStamp
    }
}
