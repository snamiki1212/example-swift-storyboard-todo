//
//  Todo.swift
//  SimpleTodo
//
//  Created by shunnamiki on 2021/05/10.
//

import Foundation

struct Todo {
    var title: String
    var todoDescription: String
    var priority: Int
    var isCompleted: Bool = false
    init(title: String, todoDescription: String, priority: Int) {
        self.title = title
        self.todoDescription = todoDescription
        self.priority = priority
    }
}
