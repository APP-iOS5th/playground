enum Channel {
    case BBC1
    case BBC2
    case BBCNews
    
}

class ProgrammeFetcher {
    
    typealias fetchResultHandler = ( String?, Error? ) -> Void
    
    func fetchCurrentProgrammeName(forChannel channel: Channel,
                                   resultHandler: fetchResultHandler){
        // ... work
        let exampleProgramName = "Sherlock"
        resultHandler(exampleProgramName, nil)
    }
    
    func fetchNextProgrammeName(forChannel channel: Channel,
                                resultHandler: fetchResultHandler ){
        let exampleProgramName = "Luther"
        resultHandler(exampleProgramName, nil)
    }
    
}

let fetcher = ProgrammeFetcher()
fetcher.fetchCurrentProgrammeName(forChannel: .BBC1, resultHandler: {
    programmeName, error in
    print(programmeName ?? "N/A")
})
