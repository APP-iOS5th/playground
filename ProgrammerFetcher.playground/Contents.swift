enum Channel {
    case BBC1
    case BBC2
    case BBCNews
}

class ProgrammerFetcher {
    
    typealias FetchResultHandler = (String?, Error?) -> Void
    func fetchCurrentProgrammeName(forChannel channel: Channel,
                                   resultHandler: FetchResultHandler) {
        // ... work
        let exampleProgramName = "Sherlock"
        resultHandler(exampleProgramName, nil)
        
    }
    
    func fetchNextProgrammeName(forChannel channel: Channel,
                                resultHandler: FetchResultHandler) {
        let exampleProgramName = "Luther"
        resultHandler(exampleProgramName, nil)
    }
}

let fetcher = ProgrammerFetcher()
fetcher.fetchCurrentProgrammeName(forChannel: .BBC1, resultHandler: { programmeName, error in print(programmeName ?? "N/A")
})
