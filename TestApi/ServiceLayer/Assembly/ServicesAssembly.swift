import Foundation

protocol IServicesAssembly {
    var newSessionService: INewSessionService { get }
    var addEntryService: IAddEntryService { get }
    var getEntriesService: IGetEntriesService { get }
}

class ServicesAssembly: IServicesAssembly {
    lazy var newSessionService: INewSessionService = NewSessionService()
    lazy var addEntryService: IAddEntryService = AddEntryService()
    lazy var getEntriesService: IGetEntriesService = GetEntriesService()
}
