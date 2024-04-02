
enum Channel{
    case BBC1
    case BBC2
    case BBCNews
}

class ProgrammeFecther{
    
    typealias FetchResultHandler = (String?, Error?) -> Void
    
    func fetchCurrentProgrammeNamme(forChannel channel: Channel, resultHandler:(String?, Error?) -> Void){
        
        let exampleProgramName = "Sherlock"
        resultHandler(exampleProgramName, nil)
        
    }
    
    func fetchNextProgrammeName(forChannel channel: Channel, resultHandler: (String?, Error?) -> Void){
        
        let exampleProgramName = "Luther"
        resultHandler(exampleProgramName, nil)
        
    }
    
}

let fetcher = ProgrammeFecther()
fetcher.fetchCurrentProgrammeNamme(forChannel: .BBC1, resultHandler: { programmeName,
    error in
    print(programmeName ?? "N/A")
})
