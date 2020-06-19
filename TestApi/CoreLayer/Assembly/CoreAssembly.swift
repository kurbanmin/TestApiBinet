//
//  CoreAssembly.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 24.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

protocol ICoreAssembly {
    var networkManager: InetworkManager { get }
}

class CoreAssembly: ICoreAssembly {
    lazy var networkManager: InetworkManager = NetworkManager()
    
}
