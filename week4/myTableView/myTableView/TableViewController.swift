//
//  ViewController.swift
//  myTableView
//
//  Created by Jenny Hung on 2022/1/25.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.rowHeight = 100
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10    // 10 行
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myTableViewCell", for: indexPath)
        let data = Data(message: "This is section \(indexPath.section), row \(indexPath.row)")
        cell.textLabel?.text = data.message
        tableView.rowHeight = 100     // 行高 100 px
        return cell
    }

}

