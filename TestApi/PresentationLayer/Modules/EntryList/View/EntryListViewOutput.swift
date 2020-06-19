//
//  RecordListViewOutput.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 24.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

protocol EntryListViewOutput: class {
    func viewIsReady()
    func buttonIsReady()
    func didSelect(entry: Entry)
}
