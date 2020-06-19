import Foundation

struct Response<T: Codable>: Codable {
    var status: Int
    var data: T
    
}
