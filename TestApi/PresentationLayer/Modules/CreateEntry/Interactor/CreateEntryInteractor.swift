//
//  CreateRecordInteractor.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 29.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

class CreateEntryInteractor {
    weak var output: CreateEntryInteractorOutput!
    var addEntryService: IAddEntryService!
}

extension CreateEntryInteractor: CreateEntryInteractorInput {
    func addEntry(text: String) {
        addEntryService.loadText(text: text) { [weak self] (result: Result<AddEntry>) in
            switch result {
            case .succes:
                DispatchQueue.main.async {
                    self?.output.didSaveEntrySuccessfully()
                }
            case .error(let error):
                print("\(error) no data")
            }
        }
    }
}
