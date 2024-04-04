
enum Channel {
    case BBC1
    case BBC2
    case BBCNews
}

class ProgrammeFetcher {
    
    typealias FetchResultHandler = (String?, Error?) -> Void
    
    func fetchCurrentProgrammeName(forChannel channel: Channel,
                                   resultHandler: FetchResultHandler) {
        let exampleProgramName = "Sherlock"
        resultHandler(exampleProgramName, nil)
    }
    
    func fetchNextProgrammeName(forChannel channel: Channel,
                                resultHandler: FetchResultHandler) {
        let exampleProgramName = "Luther"
        resultHandler(exampleProgramName, nil)
    }
}

let fetcher = ProgrammeFetcher()
fetcher.fetchCurrentProgrammeName(forChannel: .BBC1, resultHandler: { ProgrammeName, error in print(ProgrammeName ?? "N/A")
})
