enum Channel {
    case BBC1
    case BBC2
    case BBCNews
}

class ProgrammFetcher {
    typealias FetchResultHandler = (String?, Error?) -> Void
    
    func fetchCurrentProgrammeName
    (forChannel channel: Channel, resultHandler: FetchResultHandler) {
        let exampleProgramName = "Sherlock"
        resultHandler(exampleProgramName, nil)
    }
    
    func fetchNextProgrammeName
    (forChannel channl: Channel, resultHandler: FetchResultHandler) {
        let exampleProgramName = "Luther"
        resultHandler(exampleProgramName, nil)
    }
}

let fetcher = ProgrammFetcher()
fetcher.fetchCurrentProgrammeName(forChannel: .BBC1, resultHandler: {
    programName, error in
    print(programName ?? "N/A")
})







