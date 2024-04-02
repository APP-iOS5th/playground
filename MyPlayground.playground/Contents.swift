// ProgrammeFetcher

enum Channel {
    case BBC1
    case BBC2
    case BBCNews
}

class ProgrammeFetcher {
    
    typealias FetchResultHandler = (String?, Error?) -> Void
    
    func getchCurrentProgrammeName(forChannel channel: Channel,
                                   resultHandler: FetchResultHandler) {
        // ... work
        let exampleProgramNmae = "Sherlock"
        resultHandler(exampleProgramNmae, nil)
    }
    
    func fetchNextProgrammeName(forChannel channel: Channel,
                                resultHandler: (String?, Error?) -> Void) {
        
        let exampleProgramName = "Luther"
        resultHandler(exampleProgramName, nil)
    }
}

let fetcher = ProgrammeFetcher()
fetcher.getchCurrentProgrammeName(forChannel: .BBC1, resultHandler: { programmeName, error in
    print(programmeName ?? "N/A")
})
