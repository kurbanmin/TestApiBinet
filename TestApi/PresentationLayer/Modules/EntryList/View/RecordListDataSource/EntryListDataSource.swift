//
//  RecordListDataSource.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 24.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation
import UIKit

class EntryListDataSource: NSObject {
    var entries: [Entry] = []
    
    weak var output: EntryListDataSourceOutput!
    var tableView: UITableView!
    
    func configure(tableView: UITableView) {
        self.tableView = tableView
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func show(entry: [Entry]) {
        self.entries = entry
        
        tableView.reloadData()
    }
}

extension EntryListDataSource: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return entries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! EntryListTableViewCell
        let entry = entries[indexPath.row]
        
        cell.recordLabel.text = String(entry.body.prefix(200))
        cell.dataLabel.text = entry.da
        
        if entry.da == entry.dm {
            cell.modificationLabel.isHidden = true
        } else {
            cell.modificationLabel.isHidden = false
            cell.modificationLabel.text = entry.dm
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let entry = entries[indexPath.row]
        
        output.show(entry: entry)
    }
}
