//
//  RecordListInteractorOutput.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 24.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

protocol EntryListInteractorOutput: class {
    func didCreateSessionSuccessfully()
    func didCreatingSessionFailed(error: NetworkError)
    
    func didLoadEntriesSuccessfully(entries: [Entry])
    func didLoadingEntriesFailed(error: NetworkError)
}

