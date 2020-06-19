//
//  ShowEntryViewController.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 02.10.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import UIKit

class ShowEntryViewController: UIViewController {
    @IBOutlet weak var entryLabel: UILabel!
    @IBAction func cancelButton(_ sender: Any) {
        output.cancelButton()
    }
    
    var entry: Entry!
    var output: ShowEntryViewOutput!

    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
        
        entryLabel.text = entry.body
        
    }
}

extension ShowEntryViewController: ShowEntryViewInput {
    func show(entry: Entry) {
        self.entry = entry
    }
}
