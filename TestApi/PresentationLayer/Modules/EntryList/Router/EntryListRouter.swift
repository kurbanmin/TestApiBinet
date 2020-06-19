//
//  MovieDetailRouter.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 24.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

class EntryListRouter {
    weak var transitionHandler: TransitionHandler!
}

extension EntryListRouter: EntryListRouterInput {
    func openCreateRecordModule(moduleOutput: CreateEntryModuleOutput) {
        let vc = CreateEntryAssembly().module(moduleOutput: moduleOutput)
        transitionHandler.openModule(vc)
    }
    
    func presentDetailView(entry: Entry) {
        let vc = ShowEntryAssembly().view(entry: entry)
        transitionHandler.openModule(vc)
    }
}
