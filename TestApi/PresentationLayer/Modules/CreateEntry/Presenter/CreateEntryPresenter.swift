//
//  CreateRecordPresenter.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 29.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

class CreateEntryPresenter {
    weak var view: CreateEntryViewInput!
    var interactor: CreateEntryInteractorInput!
    var router: CreateEntryRouterInput!
    weak var moduleOutput: CreateEntryModuleOutput?
}

extension CreateEntryPresenter: CreateEntryViewOutput {
    func buttonIsReady() {
        router.closeCurrentModule()
    }
    
    func didSave(record: String) {        
        interactor.addEntry(text: record)
        
    }
    
    func viewIsReady() {
        view.setupInitialState()
    }    
}

extension CreateEntryPresenter: CreateEntryInteractorOutput {
    func didSaveEntrySuccessfully() {
        moduleOutput?.didCreateEntrySuccessfully()
        router.closeCurrentModule()
    }
}





