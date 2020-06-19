//
//  RecordListRouterInput.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 24.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

protocol EntryListRouterInput: class {    
    func presentDetailView(entry: Entry)
    func openCreateRecordModule(moduleOutput: CreateEntryModuleOutput)
}
