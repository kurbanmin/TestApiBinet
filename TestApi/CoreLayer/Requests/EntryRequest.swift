//
//  GetEntriesRequest.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 28.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation

class EntryRequest: IRequest {
    
    private var baseURL = "https://bnet.i-partner.ru/testAPI/"
    var param = "a=get_entries&session=\(User.shared.session)"
    
    private var urlString: String {
        
        return baseURL + "?"
    }
    
    
    
    var urlRequest: URLRequest? {
        if let url = URL(string: urlString) {
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.setValue("rR13BhJ-eb-2HuVq09", forHTTPHeaderField: "token")
            request.httpBody = param.data(using: String.Encoding.utf8)
            
            return request
        }
        return nil
    }
    
}
