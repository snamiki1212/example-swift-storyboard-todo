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
}
