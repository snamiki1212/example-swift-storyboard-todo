//
//  TodoTableViewCell.swift
//  SimpleTodo
//
//  Created by shunnamiki on 2021/05/10.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    @IBOutlet var checkboxLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    func update(item todo: Todo){
        checkboxLabel.text = todo.isCompleted ? "✅" : "☑️"
        titleLabel.text = todo.title
    }
}
