//
//  RecordListAssembly.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 24.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation
import UIKit

class EntryListAssembly {
    func view() -> UINavigationController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EntryListViewController") as! EntryListViewController
        let nc = UINavigationController(rootViewController: view)
        
        let presenter = EntryListPresenter()
        let interactor = EntryListInteractor()
        let router = EntryListRouter()
        let entryListDataSource = EntryListDataSource()
        
        presenter.view = view
        presenter.intaractor = interactor
        presenter.router = router
        
        view.output = presenter
        view.entryListDataSource = entryListDataSource
        entryListDataSource.output = view
        interactor.output = presenter
        router.transitionHandler = view
        interactor.newSessionService = ServicesAssembly().newSessionService
        interactor.getEntriesService = ServicesAssembly().getEntriesService
        
        return nc
    }
}

