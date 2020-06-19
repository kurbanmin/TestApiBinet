import Foundation

public class Reachability {
    
    class func isConnectedToNetwork(completion: @escaping ((Bool) -> ())) {
        
        var status:Bool = false
        let url = URL(string: "https://bnet.i-partner.ru/testAPI/")
        var request = URLRequest(url: url!)
        request.httpMethod = "HEAD"
        request.cachePolicy = NSURLRequest.CachePolicy.reloadIgnoringLocalAndRemoteCacheData
        request.timeoutInterval = 10.0
        let session = URLSession.shared
        
        session.dataTask(with: request, completionHandler: {(data, response, error) in
            if let httpResponse = response as? HTTPURLResponse {
                print("httpResponse.statusCode \(httpResponse.statusCode)")
                if httpResponse.statusCode == 200 {
                    status = true
                }
            }
            completion(status)
        }).resume()
        
    }
}
