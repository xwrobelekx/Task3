//
//  Task+Convinience.swift
//  Task3
//
//  Created by Kamil Wrobel on 9/7/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

import Foundation
import CoreData

extension Task {
    
    convenience init(taskName: String, notes: String? = nil, due: Date? = nil, isCompleted: Bool = false, context: NSManagedObjectContext = CoreDataStack.context){
        
        self.init(context: context)
        
        self.taskName = taskName
        self.notes = notes
        self.due = due 
        self.isComplete = false
    }
}






