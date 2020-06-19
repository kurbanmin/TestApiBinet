//
//  ShowEntryAssembly.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 02.10.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation
import UIKit

class ShowEntryAssembly {
    func view(entry: Entry) -> UINavigationController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ShowEntryViewController") as! ShowEntryViewController
        let nc = UINavigationController(rootViewController: view)
        
        let presenter = ShowEntryPresenter()
        let interactor = ShowEntryInteractor()
        let router = ShowEntryRouter()
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        presenter.entry = entry
        
        view.output = presenter
        interactor.output = presenter
        router.transitionHandler = view
        
        return nc
    }
}
