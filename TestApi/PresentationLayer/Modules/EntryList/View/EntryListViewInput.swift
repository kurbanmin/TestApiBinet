//
//  RecordListViewInput.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 24.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

protocol EntryListViewInput: class {
    func setupInitialState()
    func show(entry: [Entry])
    func showAlert(message: String, action: (() -> ())?)
}
