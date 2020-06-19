import Foundation

enum NetworkErrorType {
    case `default`
    case noConnection
}

struct NetworkError: Error {
    var type: NetworkErrorType
    var description: String
}

