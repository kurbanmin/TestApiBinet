//
//  newSessionRequest.swift
//  testProjectBnet
//
//  Created by Загид Гусейнов on 23.09.2019.
//  Copyright © 2019 Загид Гусейнов. All rights reserved.
//

import Foundation
import UIKit



class NewSessionRequest: IRequest {
    
    private var baseURL = "https://bnet.i-partner.ru/testAPI/"
    var params = "a=new_session"
    
    
    private var urlString: String {
        
        return baseURL + "?"
    }
  
    var urlRequest: URLRequest? {
        if let url = URL(string: urlString) {
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.setValue("rR13BhJ-eb-2HuVq09", forHTTPHeaderField: "token")
            request.httpBody = params.data(using: String.Encoding.utf8)
            
          return request
        }
        return nil
    }
}
