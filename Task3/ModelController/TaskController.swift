//
//  TaskController.swift
//  Task3
//
//  Created by Kamil Wrobel on 9/7/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

import Foundation

class TaskController {
    
    static let shared = TaskController()
    
    private init() {
        tasks = fetchData()
    }
    
    
    
    var mockData : [Task] = {
        
        let task1 = Task(taskName: "Work")
        let task2 = Task(taskName: "Study", notes: "bla bla bla", due: Date(), isCompleted: true)
        let task3 = Task(taskName: "Error task", notes: "elo elo", due: nil, isCompleted: true)
        
        return [task1, task2, task3]
    }()

    
    //MARK: - CRUD Methods
    
    func createNewTask(name: String, notes: String?, dueDate: Date?){
        let task = Task(taskName: name, notes: notes, due: dueDate)
        tasks.append(task)
        saveToPersistanceStore()
    }
    
    
    func update(task: Task, taskName: String, dueData: Date?, notes: String?) {
        task.taskName = taskName
        task.due = dueData
        task.notes = notes
        saveToPersistanceStore()
       // fetchData()
        
    }
    
    
    func delete(task: Task) {
        guard let index = tasks.index(of: task) else {return}
        tasks.remove(at: index)
        saveToPersistanceStore()
        
    }
    
    
    func saveToPersistanceStore() {
        
    }
    
    
    func fetchData() -> [Task]{
        
        return mockData
    }
    
    var tasks : [Task] = []
    
}
