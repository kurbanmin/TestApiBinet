//
//  RecordListViewController.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 24.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import UIKit

class EntryListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBAction func createRecordButton(_ sender: Any) {
        output.buttonIsReady()
    }
    
    var output: EntryListViewOutput!
    var entryListDataSource: EntryListDataSource!

    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()

    }

}

extension EntryListViewController: EntryListViewInput{
    func showAlert(message: String, action: (() -> ())?) {
        let alert = UIAlertController(title: "Проверьте соединение с сетью", message: message, preferredStyle: .alert)
        
        if let action = action {
            let retryAction = UIAlertAction(title: "Повторить", style: .destructive) { _ in
                action()
            }
            alert.addAction(retryAction)
        } else {
            let okAction = UIAlertAction(title: "Обновить данные", style: .cancel)
            alert.addAction(okAction)
        }
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func show(entry: [Entry]) {
        entryListDataSource.show(entry: entry)
    }
    
    func setupInitialState() {
        entryListDataSource.configure(tableView: tableView)
    }
    
}

extension EntryListViewController: EntryListDataSourceOutput {
    func show(entry: Entry) {
        output.didSelect(entry: entry)
    }    
}
