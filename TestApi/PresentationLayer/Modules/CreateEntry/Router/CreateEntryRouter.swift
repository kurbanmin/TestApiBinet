//
//  CreateRecordRouter.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 29.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

class CreateEntryRouter {
    weak var transitionHandler: TransitionHandler!
}

extension CreateEntryRouter: CreateEntryRouterInput {
    func openCreateRecordModule(moduleOutput: CreateEntryModuleOutput) {
        
    }
    
    func closeCurrentModule() {
        transitionHandler.dismissView()
    }    
}
