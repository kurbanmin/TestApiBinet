//
//  CreateRecordViewController.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 29.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import UIKit

class CreateEntryViewController: UIViewController {
    
    @IBOutlet weak var recordTextView: UITextView!
    @IBAction func saveButton(_ sender: Any) {
        guard let text = recordTextView.text else { return }        
        output.didSave(record: text)
    }
    @IBAction func cancelButton(_ sender: Any) {
        output.buttonIsReady()
    }    
    
    var output: CreateEntryViewOutput!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
}

extension CreateEntryViewController: CreateEntryViewInput {
    func setupInitialState() {
        recordTextView.reloadInputViews()
    }
}


    

