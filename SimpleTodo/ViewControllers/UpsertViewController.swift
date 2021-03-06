//
//  UpsertViewController.swift
//  SimpleTodo
//
//  Created by shunnamiki on 2021/05/10.
//

import UIKit

class UpsertTableViewController: UITableViewController {
    
    var todo: Todo?
    @IBOutlet var titleTextfield: UITextField!
    
    // MARK: - Initializer
    init?(coder: NSCoder, item: Todo?){
        self.todo = item
        super.init(coder: coder)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let todo = todo {
            title = "Edit"
            titleTextfield.text = todo.title
        } else {
            todo = Todo(title: "", priority: 1)
            title = "New"
        }
    }
    
    @IBAction func editTitle(_ sender: UITextField) {
        todo?.title = sender.text ?? ""
    }
    
}
