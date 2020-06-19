//
//  RecordListInteractor.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 24.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

class EntryListInteractor {
    
    weak var output: EntryListInteractorOutput!
    var newSessionService: INewSessionService!
    var getEntriesService: IGetEntriesService!
}

extension EntryListInteractor: EntryListInteractorInput {
    func showEntries() {
        getEntriesService.showEntry { [weak self] (result: Result<[Entry]>) in
            switch result {
            case .succes(let entries):
                DispatchQueue.main.async {
                    self?.output.didLoadEntriesSuccessfully(entries: entries)
                }
            case .error(let error):
                DispatchQueue.main.async {
                    self?.output.didLoadingEntriesFailed(error: error)
                }
            }
        }
    }
    
    func createSession() {
        newSessionService.createSession { [weak self] (result: Result<NewSession>) in
            switch result {
            case .succes:
                DispatchQueue.main.async {
                    self?.output.didCreateSessionSuccessfully()
                }
            case .error(let error):
                DispatchQueue.main.async {
                    self?.output.didCreatingSessionFailed(error: error)
                }
            }
        }
    }
}
