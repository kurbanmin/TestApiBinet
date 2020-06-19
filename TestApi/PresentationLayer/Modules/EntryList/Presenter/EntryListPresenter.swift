//
//  RecordListPresenter.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 24.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation
import UIKit

class EntryListPresenter {
    
    weak var view: EntryListViewInput!
    var intaractor: EntryListInteractorInput!
    var router: EntryListRouterInput!
}

extension EntryListPresenter: EntryListViewOutput {
    func didSelect(entry: Entry) {
        router.presentDetailView(entry: entry)
    }
    
    func buttonIsReady() {
        router.openCreateRecordModule(moduleOutput: self)
    }
    
    func viewIsReady() {
        intaractor.createSession()
        view.setupInitialState()
    }
}

extension EntryListPresenter: CreateEntryModuleOutput {
    func didCreateEntrySuccessfully() {
        intaractor.showEntries()
    }
}

extension EntryListPresenter: EntryListInteractorOutput {
    func didCreatingSessionFailed(error: NetworkError) {
        if error.type == .noConnection {
            self.view.showAlert(message: "Нет сети") { [weak self] in
                self?.intaractor.createSession()
            }
            return
        }
        
        self.view.showAlert(message: error.localizedDescription, action: nil)
    }
    
    func didLoadEntriesSuccessfully(entries: [Entry]) {
        view.show(entry: entries)
    }
    
    func didLoadingEntriesFailed(error: NetworkError) {
        if error.type == .noConnection {
            self.view.showAlert(message: "Нет сети") { [weak self] in
                self?.intaractor.showEntries()
            }
            return
        }
        
        self.view.showAlert(message: error.localizedDescription, action: nil)
    }
    
    func didCreateSessionSuccessfully() {        
        intaractor.showEntries()
    }
}
