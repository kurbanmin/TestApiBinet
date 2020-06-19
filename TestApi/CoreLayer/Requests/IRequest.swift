//
//  IRequest.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 23.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

protocol IRequest: class {
    var urlRequest: URLRequest? { get }
}
