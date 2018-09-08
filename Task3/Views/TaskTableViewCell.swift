//
//  TaskTableViewCell.swift
//  Task3
//
//  Created by Kamil Wrobel on 9/7/18.
//  Copyright © 2018 Kamil Wrobel. All rights reserved.
//

import UIKit

class TaskTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var taskNameLabel: UILabel!
    @IBOutlet weak var colpeteButton: UIButton!
    
    
    var taskToDisplay : Task? {
        didSet {
            updateViews()
        }
    }
    
    

    
    func updateViews() {
        guard let task = taskToDisplay else {return}
        taskNameLabel.text = task.taskName
        updateColpeteLabel()
    }
    
    func updateColpeteLabel(){
        //FIXME: update this label
    }
    
    
    @IBAction func isCompleteButtonTapped(_ sender: Any) {
        
    }
    

}
