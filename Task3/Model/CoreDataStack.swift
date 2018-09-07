//
//  CoreDataStack.swift
//  Task3
//
//  Created by Kamil Wrobel on 9/7/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

import Foundation

import CoreData


enum CoreDataStack {
    
    static let container: NSPersistentContainer = {
        
        let appName = Bundle.main.object(forInfoDictionaryKey: (kCFBundleNameKey as String))! as! String
        let container = NSPersistentContainer(name: appName)
        container.loadPersistentStores(completionHandler: { (storePersistance, error) in
            if let error = error as NSError? {
                fatalError("Error Loadinf from Persistance Stroe \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    static var context : NSManagedObjectContext { return container.viewContext }
}


