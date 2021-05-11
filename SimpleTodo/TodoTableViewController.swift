//
//  TodoTableViewController.swift
//  SimpleTodo
//
//  Created by shunnamiki on 2021/05/10.
//

import UIKit



class TodoTableViewController: UITableViewController {
    
    var list = [
        Todo(title: "Buy a milk", todoDescription: "THIS IS DESCRIPTION", priority: 1),
        Todo(title: "Buy a milk", todoDescription: "THIS IS DESCRIPTION", priority: 1),
        Todo(title: "Buy a milk", todoDescription: "THIS IS DESCRIPTION", priority: 1),
        Todo(title: "Buy a milk", todoDescription: "THIS IS DESCRIPTION", priority: 1),
        Todo(title: "Buy a milk", todoDescription: "THIS IS DESCRIPTION", priority: 1),
        Todo(title: "Buy a milk", todoDescription: "THIS IS DESCRIPTION", priority: 1),
        Todo(title: "Buy a milk", todoDescription: "THIS IS DESCRIPTION", priority: 1),
        Todo(title: "Buy a milk", todoDescription: "THIS IS DESCRIPTION", priority: 1),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem
    }
    
    // MARK: - Data source of table view
    override func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        list.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Todo", for: indexPath) as! TodoTableViewCell
        let todo = list[indexPath.row]
        cell.update(item: todo)
        cell.showsReorderControl = true
        return cell
    }
    
    // MARK: - Move feature
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let item = list.remove(at: sourceIndexPath.row)
        list.insert(item, at: destinationIndexPath.row)
    }
    
    // MARK: - Remove feature
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        list.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .automatic)
    }
    
    // MARK: --
}
