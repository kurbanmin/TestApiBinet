//
//  ShowEntryRouter.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 02.10.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

class ShowEntryRouter {
    weak var transitionHandler: TransitionHandler!
}

extension ShowEntryRouter: ShowEntryRouterInput {
    func closeCurrentModule() {
        transitionHandler.dismissView()
    }    
}
