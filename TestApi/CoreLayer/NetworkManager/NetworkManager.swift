import Foundation

protocol InetworkManager {
    func perform<T>(with requet: IRequest, completion: @escaping (Result<T>) -> Void) where T: Codable
}

class NetworkManager: InetworkManager {
    func perform<T>(with request: IRequest, completion: @escaping (Result<T>) -> Void) where T : Codable {
        guard let urlRequest = request.urlRequest else {
            completion(Result.error(NetworkError(type: .default, description: "Wrong url request")))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { (data, _, error) in
            
            if let error = error {
                if let nsError = error as NSError?, [-1003,-1004,-1009,-1010].contains(nsError.code) {
                    completion(Result.error(NetworkError(type: .noConnection, description: nsError.localizedDescription)))
                    return
                }
                completion(Result.error(NetworkError(type: .default, description: error.localizedDescription)))
                return
            }
            
            #warning ("удалить")
            let jsonString = String(data: data!, encoding: .utf8)
            print(jsonString)
            
            guard let data = data else {
                completion(Result.error(NetworkError(type: .default, description: "No data")))
                return
            }
            
            do {
                let networks = try JSONDecoder().decode(T.self, from: data)
               
                completion(Result.succes(networks))
            } catch {
                completion(Result.error(NetworkError(type: .default, description: error.localizedDescription)))
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}
