
enum Channel {
    case BBC1
    case BBC2
    case BBCNews
}

class ProgramFetcher {
    
    typealias FetchResultHandler = (String?, Error?) -> Void
    
    func fetchCurrentProgramName(forChannel channel: Channel, resultHandler: FetchResultHandler) {
        let exampleProgramName = "Sherlock"
        resultHandler(exampleProgramName, nil)
    }
    
    func fetchnextProgramName(forChannel channel: Channel, resultHandler: FetchResultHandler) {
        let exampleProgramName = "Luther"
        resultHandler(exampleProgramName, nil)
    }
}

let fetcher = ProgramFetcher()
fetcher.fetchCurrentProgramName(forChannel: .BBC1, resultHandler: { programName, error in
    print(programName ?? "N/A")
})
