//
//  ShowEntryPresenter.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 02.10.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

class ShowEntryPresenter {
    
    weak var view: ShowEntryViewInput!
    var interactor: ShowEntryInteractorInput!
    var router: ShowEntryRouterInput!
    var entry: Entry!
}

extension ShowEntryPresenter: ShowEntryViewOutput {
    func viewIsReady() {
        view.show(entry: entry)
    }
    
    func cancelButton() {
        router.closeCurrentModule()
    }
    
    
}

extension ShowEntryPresenter: ShowEntryIntaractorOutput {
}



