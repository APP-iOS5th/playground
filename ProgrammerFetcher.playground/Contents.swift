enum Channel {
    case BBC1
    case BBC2
    case BBCNews
}

class ProgrammerFetcher {
    
    typealias FetchResultHandler = (String?, Error?) -> Void
    
    func fetchCurrentProgrammeName(forChannel channel: Channel, ResultHandler: FetchResultHandler) {
        // ... Work
        let exampleProgramName = "Sherlock"
        ResultHandler(exampleProgramName,nil)
        
    }
    
    func fetchNextProgrammeName(forChannel channel: Channel, ResultHandler: FetchResultHandler) {
        // ... Work
        let exampleProgramName = "Luther"
        ResultHandler(exampleProgramName,nil)
    }
}

let fetcher = ProgrammerFetcher()
fetcher.fetchCurrentProgrammeName(forChannel: .BBC1, ResultHandler: {prorammeName, error in print(prorammeName ?? "N/A")})
