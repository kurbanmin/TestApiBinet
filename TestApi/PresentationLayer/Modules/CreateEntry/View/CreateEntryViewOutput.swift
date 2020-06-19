//
//  CreateRecordViewOutput.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 29.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

protocol CreateEntryViewOutput: class {
    func viewIsReady()
    func buttonIsReady()
    func didSave(record: String)
}
