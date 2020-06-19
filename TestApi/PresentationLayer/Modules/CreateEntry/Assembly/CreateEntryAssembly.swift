//
//  CreateRecordAssembly.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 29.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation
import UIKit

class CreateEntryAssembly {
    func module(moduleOutput: CreateEntryModuleOutput? = nil) -> UINavigationController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CreateEntryViewController") as! CreateEntryViewController
        let nc = UINavigationController(rootViewController: view)
        
        let presenter = CreateEntryPresenter()
        let interactor = CreateEntryInteractor()
        let router = CreateEntryRouter()
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        presenter.moduleOutput = moduleOutput
        
        view.output = presenter       
        interactor.output = presenter
        router.transitionHandler = view
        interactor.addEntryService = ServicesAssembly().addEntryService
       
        
        return nc
    }
    
    
    
}
