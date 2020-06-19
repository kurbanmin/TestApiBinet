import Foundation

protocol INewSessionService: class {
    func createSession(completion: @escaping (Result<NewSession>) -> Void)
}

class NewSessionService: INewSessionService {
    let networkManager: InetworkManager = NetworkManager()
    
    func createSession(completion: @escaping (Result<NewSession>) -> Void) {
        if let session = UserDefaults.standard.string(forKey: "session") {
            User.shared.session = session
            completion(Result.succes(NewSession(session: session)))
            
            return
        }
        
        let newSessionRequest = NewSessionRequest()
        
        networkManager.perform(with: newSessionRequest) { (result: Result<Response<NewSession>>) in
            switch result {
            case .succes(let response):
                User.shared.session = response.data.session
                UserDefaults.standard.set(response.data.session, forKey: "session")
                completion(Result.succes(response.data))
            case .error(let error):
                completion(Result.error(error))
            }
        }
    }
    
}
